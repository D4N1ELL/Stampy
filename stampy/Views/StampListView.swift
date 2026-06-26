import SwiftUI

struct StampListView: View {

    @ObservedObject var viewModel: StampListViewModel

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.stamps) { stamp in
                    Text(stamp.title)
                }
                .onDelete { indexSet in
                    indexSet.forEach { viewModel.deleteStamp(viewModel.stamps[$0]) }
                }
            }
            .navigationTitle("My Stamps")
            .onAppear {
                viewModel.loadStamps()
            }
        }
    }
}
