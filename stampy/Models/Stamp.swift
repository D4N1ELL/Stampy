import Foundation

struct Stamp: Identifiable {
    let id: UUID
    var title: String
    var photoData: Data
    var latitude: Double?
    var longitude: Double?
    var createdAt: Date
}
