//
//  CoreDataStampRepository.swift
//  stampy
//
//  Created by Daniel Istrati on 26.06.2026.
//

import Foundation
import CoreData

final class CoreDataStampRepository: StampRepositoryProtocol {

    private let context: NSManagedObjectContext
    
    private func toStamp(_ entity: StampEntity) -> Stamp {
        return Stamp(
            id: entity.id ?? UUID(),
            title: entity.title ?? "",
            photoData: entity.photoData ?? Data(),
            latitude: entity.latitude?.doubleValue,
            longitude: entity.longitude?.doubleValue,
            createdAt: entity.createdAt ?? Date()
        )
    }

    init(context: NSManagedObjectContext) {
        self.context = context
    }

    func fetchAll() -> [Stamp] {
        let request = NSFetchRequest<StampEntity>(entityName: "StampEntity")
        let entities = (try? context.fetch(request)) ?? []
        return entities.map { toStamp($0) }
    }

    func save(_ stamp: Stamp) {
        let entity = StampEntity(context: context)
        entity.id = stamp.id
        entity.title = stamp.title
        entity.photoData = stamp.photoData
        entity.latitude = stamp.latitude.map { NSNumber(value: $0) }
        entity.longitude = stamp.longitude.map { NSNumber(value: $0) }
        entity.createdAt = stamp.createdAt
        try? context.save()
    }

    func delete(id: UUID) {
        let request = NSFetchRequest<StampEntity>(entityName: "StampEntity")
        request.predicate = NSPredicate(format: "id == %@", id as CVarArg)
        
        if let entity = try? context.fetch(request).first {
            context.delete(entity)
            try? context.save()
        }
    }
}
