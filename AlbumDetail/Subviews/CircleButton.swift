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
      Image(systemName: imageName)
        .padding(10)
        .background(Color.black)
        .clipShape(Circle())
        .font(.title)
        .foregroundColor(.gray)
    })
  }
}

struct CircleButton_Previews: PreviewProvider {
  static var previews: some View {
    CircleButton(imageName: "heart")
  }
}
