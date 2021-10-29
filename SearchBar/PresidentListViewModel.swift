import Foundation

class PresidentListViewModel: ObservableObject {
    
    @Published var presidents: [President] = []
    @Published var searchText: String = ""
    
    var filteredPresidents: [President] {
        return (searchText.isEmpty ? presidents : presidents.filter { $0.name.localizedCaseInsensitiveContains(searchText)})
            .sorted { $0.name < $1.name }
    }

    init() {
        presidents = [
            President(name: "Joseph R. Biden Jr."),
            President(name: "Donald Trump"),
            President(name: "Barack Obama"),
            President(name: "George W. Bush"),
            President(name: "William J. Clinton"),
            President(name: "George H. W. Bush"),
            President(name: "Ronald Reagan"),
            President(name: "James Carter"),
            President(name: "Gerald R. Ford"),
            President(name: "Richard M. Nixon"),
            President(name: "Lyndon B. Johnson"),
            President(name: "John F. Kennedy"),
            President(name: "Dwight D. Eisenhower"),
            President(name: "Harry S. Truman"),
            President(name: "Franklin D. Roosevelt"),
            President(name: "Herbert Hoover"),
            President(name: "Calvin Coolidge"),
            President(name: "Warren G. Harding"),
            President(name: "Woodrow Wilson"),
            President(name: "William Howard Taft"),
            President(name: "Theodore Roosevelt"),
            President(name: "William McKinley"),
            President(name: "Grover Cleveland"),
            President(name: "Benjamin Harrison"),
            President(name: "Grover Cleveland"),
            President(name: "Chester A. Arthur"),
            President(name: "James Garfield"),
            President(name: "Rutherford B. Hayes"),
            President(name: "Ulysses S. Grant"),
            President(name: "Andrew Johnson"),
            President(name: "Abraham Lincoln"),
            President(name: "James Buchanan"),
            President(name: "Franklin Pierce"),
            President(name: "Millard Fillmore"),
            President(name: "Zachary Taylor"),
            President(name: "James K. Polk"),
            President(name: "John Tyler"),
            President(name: "William Henry Harrison"),
            President(name: "Martin Van Buren"),
            President(name: "Andrew Jackson"),
            President(name: "John Quincy Adams"),
            President(name: "James Monroe"),
            President(name: "James Madison"),
            President(name: "Thomas Jefferson"),
            President(name: "John Adams"),
            President(name: "George Washington")
        ]
    }
}

struct President {
    let id = UUID()
    let name: String
}
