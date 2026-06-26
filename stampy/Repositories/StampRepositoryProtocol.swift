//
//  StampRepositoryProtocol.swift
//  stampy
//
//  Created by Daniel Istrati on 26.06.2026.
//
import Foundation

protocol StampRepositoryProtocol {
    func fetchAll() -> [Stamp]
    func save(_ stamp: Stamp)
    func delete(id: UUID)
    
}
