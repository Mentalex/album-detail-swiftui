//
//  CicleButtonsContainer.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 10/03/21.
//

import SwiftUI

struct CicleButtonsContainer: View {
  
  var body: some View {
    HStack {
      CircleButton(imageName: "heart")
      Spacer()
      CircleButton(imageName: "arrow.down")
      Spacer()
      CircleButton(imageName: "square.and.arrow.up")
      Spacer()
      CircleButton(imageName: "ellipsis")
    }
  }
}

struct CicleButtonsContainer_Previews: PreviewProvider {
  static var previews: some View {
    CicleButtonsContainer()
  }
}
