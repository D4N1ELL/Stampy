import Foundation

struct Album: Identifiable {
    let id: UUID
    var name: String
    var description: String?
    var createdAt: Date
    // stamps relationship will be added when implementing the album feature
}
