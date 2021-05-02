//
//  CircleButton.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 08/03/21.
//

import SwiftUI

struct CircleButton: View {
  
  var imageName: String
  
  init(imageName: String) {
    self.imageName = imageName
  }
  
  var body: some View {
    Button(action: {}, label: {
      Circle()
        .fill(Color.x1E1E1E)
        .overlay(
          Image(systemName: imageName)
            .font(.title)
            .foregroundColor(.xEEEEEE)
        )
    })
  }
}

struct CircleButton_Previews: PreviewProvider {
  static var previews: some View {
    CircleButton(imageName: "heart")
    CircleButton(imageName: "ellipsis")
  }
}
