
import SwiftUI

struct Point {
  var x: Int
  var y: Int
  
  func distance(to point: Point) -> Double {
    let dx = Double(x - point.x)
    let dy = Double(y - point.y)
    let distance = sqrt(dx * dx + dy * dy)
    return distance
  }
}

struct Distance: View {
  @State var myPoint: Point = Point(x: 10, y: 10)
  @State var myDistance: Double = 0.0
  var body: some View {
    Text("Two points given can calculate the distance.")
    Text("Here is the distance \(myDistance)")
    Button("Ok") {
      let point2 = Point(x: 30, y: 29)
      myDistance = myPoint.distance(to: point2)
      
    }
  }
}

struct Distance_Previews: PreviewProvider {
  static var previews: some View {
    Distance()
  }
}
