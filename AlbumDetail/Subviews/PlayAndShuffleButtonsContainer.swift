//
//  PlayAndShuffleButtonsContainer.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 11/03/21.
//

import SwiftUI

struct PlayAndShuffleButtonsContainer: View {
  
  var body: some View {
    HStack {
      RoundedButton(title: "REPRODUCIR", iconName: "play.fill", color: .xDE1717)
      Spacer()
      RoundedButton(title: "ALEATORIO", iconName: "shuffle", color: .x1E1E1E)
    }
    .frame(minWidth: 0, maxWidth: .infinity)
    .padding(.all)
  }
}

struct PlayAndShuffleButtonsContainer_Previews: PreviewProvider {
  static var previews: some View {
    PlayAndShuffleButtonsContainer()
      .background(Color.x2A2A2A)
  }
}
