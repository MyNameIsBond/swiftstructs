
import SwiftUI

struct Temperature {
  let celcius: Double
  let fahrenheit: Double
  
  func celciusTofahrenheit() -> Double {
    return self.celcius * 1.8 + 32
  }
  
  func fahrenheitTocelcius() -> Double {
    return self.fahrenheit * 0.5555 - 32
  }
}

struct TemperatureStruct: View {
  @State var temp: Temperature = Temperature(celcius: 10.4, fahrenheit: 40)
  @State var f: Double = 0.0
  @State var c: Double = 0.0
  
    var body: some View {
      Text("Turn Fahrenheit to Celcius")
      Button("Print F \(f)") {
        f = temp.fahrenheitTocelcius()
      }
      
      Button("print C \(c)") {
        c = temp.celciusTofahrenheit()
      }
    }
}

struct TemperatureStruct_Previews: PreviewProvider {
    static var previews: some View {
        TemperatureStruct()
    }
}
