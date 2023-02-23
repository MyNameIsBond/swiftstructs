
import SwiftUI

struct Book {
  let title: String
  let author: String
  let number: Int
  let pages: Int
  
  func pageCheck() -> Bool {
    if self.pages > 500 {
      return true
    } else {
      return false
    }
  }
}

struct Library: View {
  @State var myBook: Book = .init(title: "A song of ice and fire", author: "Goerge R.R. Martin", number: 5, pages: 890)
  @State var isMoreThan500: Bool = false
  var body: some View {
    Text("Title: \(myBook.title)")
    Text("Author: \(myBook.author)")
    Text("Pages: \(myBook.pages)")
    Text("Does it have more than 500 pages?")
    Text(isMoreThan500 ? "yes" : "no")
    Button("Check") {
      isMoreThan500 = myBook.pageCheck()
    }
  }
}

struct Library_Previews: PreviewProvider {
  static var previews: some View {
    Library()
  }
}
