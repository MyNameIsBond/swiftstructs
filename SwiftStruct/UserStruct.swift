
import SwiftUI

struct Person {
  var name: String
  var address: String
  var age: Int
  
  func showPerson() -> String {
    return "My Name is \(name), I live in \(address) and I am \(age) years old"
  }
}

struct UserStruct: View {
  @State var person = Person(name: "Dolores", address: "Namouki", age: 23)
  @State var myPerson: String = ""
  var body: some View {
    Text("Tell us who are you")
    Text(myPerson)
    Button("Ok") {
      myPerson = person.showPerson()
    }
  }
}

struct UserStruct_Previews: PreviewProvider {
  static var previews: some View {
    UserStruct()
  }
}
