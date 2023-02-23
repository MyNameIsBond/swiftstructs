
import SwiftUI

struct Song {
  let title: String
  let artist: String
  let duration: Double
  var play: Bool = false
  
  mutating func playSong() -> Bool {
    self.play = true
    return self.play
  }
  
  mutating func stropSong() -> Bool {
    self.play = false
    return self.play
  }
}

struct PlayMusic: View {
  @State var mySong: Song = Song(title: "Wap", artist: "Nicky Minaj", duration: 1.30)
  var body: some View {
    Text("Play Music")
    Image(systemName: mySong.play ? "play.fill" : "stop.fill").onTapGesture {
      if mySong.play {
        mySong.stropSong()
        print("PLAY:", mySong)
      } else {
        mySong.playSong()
        print("STOP", mySong)
      }
      
    }
  }
}

struct PlayMusic_Previews: PreviewProvider {
  static var previews: some View {
    PlayMusic()
  }
}
