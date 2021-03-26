//
//  RoundedButton.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 11/03/21.
//

import SwiftUI

struct RoundedButton: View {
  
  private let title: String
  private let iconName: String
  private let color: Color
  
  init(title: String, iconName: String, color: Color) {
    self.title = title
    self.iconName = iconName
    self.color = color
  }
  
  var body: some View {
    Button(action: {}, label: {
      HStack {
        Image(systemName: iconName)
        Text(title).fontWeight(.semibold)
      }
    })
    .foregroundColor(.xEEEEEE)
    .padding()
    .background(color)
    .cornerRadius(20)
  }
}

struct RoundedButton_Previews: PreviewProvider {
  static var previews: some View {
    RoundedButton(title: "REPRODUCIR", iconName: "play.fill", color: .xDE1717)
  }
}
