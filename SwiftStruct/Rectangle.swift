
import SwiftUI

struct myRectangle {
  let height: Int
  let width: Int
  
  func getArea() -> Int {
    return height * width
  }
  
  func getPerimeter() -> Int {
    return self.getArea() / 2
  }
  
  func printRect() -> String{
    return "Rectangle with height of \(height) and width of \(width) has area \(getArea()) and perimeter \(self.getPerimeter())"
  }
}
  
struct Rectangle: View {
  @State var rect: myRectangle = myRectangle(height: 100, width: 100)
  @State var print = ""
    var body: some View {
        Text("Calculate a Rectangle")
      Text(print)
      Button("show Area") {
        print = rect.printRect()
      }
    }
}

struct Rectangle_Previews: PreviewProvider {
    static var previews: some View {
        Rectangle()
    }
}
