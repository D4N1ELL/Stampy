import SwiftUI
import CoreData

@main
struct stampyApp: App {
    @StateObject private var viewModel = StampListViewModel(
        repository: CoreDataStampRepository(
            context: PersistenceController.shared.container.viewContext
        )
    )

    var body: some Scene {
        WindowGroup {
            StampListView(viewModel: viewModel)
        }
    }
}
