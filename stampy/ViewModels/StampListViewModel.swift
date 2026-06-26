//
//  StampListViewModel.swift
//  stampy
//
//  Created by Daniel Istrati on 26.06.2026.
//

import Foundation
import Combine

@MainActor
final class StampListViewModel: ObservableObject {

    @Published private(set) var stamps: [Stamp] = []

    private let repository: StampRepositoryProtocol

    init(repository: StampRepositoryProtocol) {
        self.repository = repository
    }

    func loadStamps() {
        stamps = repository.fetchAll()
    }

    func deleteStamp(_ stamp: Stamp) {
        repository.delete(id: stamp.id)
        loadStamps()
    }
}
