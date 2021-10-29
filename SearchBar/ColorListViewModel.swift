import Foundation

class ColorListViewModel: ObservableObject {
    
    @Published var colors: [String] = []
    @Published var searchText: String = ""
    
    var filteredColors: [String] {
        return (searchText.isEmpty ? colors : colors.filter { $0.localizedCaseInsensitiveContains(searchText)})
            .sorted { $0 < $1 }
    }
    
    init() {
        colors = [
            "Blue",
            "Mint",
            "Green",
            "Yellow",
            "Orange",
            "Red",
            "Pink",
            "Purple",
            "Black",
            "White"
        ]
    }
}
