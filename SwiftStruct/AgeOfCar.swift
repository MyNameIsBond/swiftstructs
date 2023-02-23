
import SwiftUI

struct Car {
  let make: String
  let year: Int
  let model: String
  
  func ageOfCar() -> String {
    
    let now = Date()
    guard let startDate = Calendar.current.date(from: DateComponents(year: self.year)) else {
      return "error with the date"
    }
    guard let years = Calendar.current.dateComponents([.year], from: startDate, to: now).year else {
      return "error with the years"
    }
    
    return "The \(make) - \(model) of the \(year) is \(years) old"
    
  }
}

struct AgeOfCar: View {
  @State var myCar: Car = Car(make: "Volvo", year: 2010, model: "Sudan")
  @State var str: String = ""
  var body: some View {
    Text("Age Of a car")
    Text(str)
    Button("Show Age") {
      str = myCar.ageOfCar()
    }
  }
}

struct AgeOfCar_Previews: PreviewProvider {
  static var previews: some View {
    AgeOfCar()
  }
}
