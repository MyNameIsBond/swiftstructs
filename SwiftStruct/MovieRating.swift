
import SwiftUI

struct Movie {
  let title: String
  let director: String
  let rating: Int
  
  func goldenRating() -> Bool {
    if rating > 8 {
      return true
    } else {
      return false
    }
  }
}

struct MovieRating: View {
  @State var myMovie: Movie = .init(title: "Lord of the Rings", director: "Peter Jackson", rating: 10)
  var body: some View {
    Text("See if movies are rated more than 8 stars.")
    Button("Check") {
      let e = myMovie.goldenRating()
      print(e)
    }
  }
}

struct MovieRating_Previews: PreviewProvider {
  static var previews: some View {
    MovieRating()
  }
}
