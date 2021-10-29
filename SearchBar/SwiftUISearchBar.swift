import SwiftUI

struct SwiftUISearchBar: View {
    @ObservedObject var vm = ColorListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.filteredColors, id: \.self) { color in
                    Text(color)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Colors")
            .searchable(text: $vm.searchText, prompt: "Search Color", suggestions: {
                Text("Red").searchCompletion("red")
                Text("🍒").searchCompletion("pink")
                
                Button("Pink") {
                    vm.searchText = "pink"
                }
                
                Image(systemName: "leaf.fill")
                    .symbolRenderingMode(.multicolor)
                    .searchCompletion("green")
                
                Circle()
                    .fill(Color.mint)
                    .frame(width: 25, height: 25)
                    .searchCompletion("mint")
            })
        }
    }
}

struct SwiftUISearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISearchBar()
    }
}
