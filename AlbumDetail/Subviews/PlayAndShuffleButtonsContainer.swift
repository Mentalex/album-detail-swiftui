//
//  PlayAndShuffleButtonsContainer.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 11/03/21.
//

import SwiftUI

struct PlayAndShuffleButtonsContainer: View {
  
  private let playButtonColor = Color(red: 222/255, green: 23/255, blue: 24/255)
  private let shuffleButtonColor = Color(red: 30/255, green: 30/255, blue: 30/255)
  
  var body: some View {
    HStack {
      RoundedButton(title: "REPRODUCIR", iconName: "play.fill", color: playButtonColor)
      Spacer()
      RoundedButton(title: "ALEATORIO", iconName: "shuffle", color: shuffleButtonColor)
    }
    .frame(minWidth: 0, maxWidth: .infinity)
    .padding(.all)
  }
}

struct PlayAndShuffleButtonsContainer_Previews: PreviewProvider {
  static var previews: some View {
    PlayAndShuffleButtonsContainer()
  }
}
