import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SwiftUISearchBar()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("SwiftUI")
                }
            
            UIKitSearchBar()
                .tabItem {
                    Image(systemName: "binoculars")
                    Text("UIKit")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
