import SwiftUI

struct UIKitSearchBar: View {
    @ObservedObject var vm = PresidentListViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $vm.searchText, placeholder: "Search Name")
                    .padding(.horizontal, 8)
                
                List {
                    ForEach(vm.filteredPresidents, id: \.id) { president in
                        Text(president.name)
                    }
                }
                .listStyle(.plain)
                .navigationTitle("Presidents")
            }
        }
    }
}

struct UIKitSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        UIKitSearchBar()
    }
}
