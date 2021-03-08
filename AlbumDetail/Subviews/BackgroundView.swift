//
//  BackgroundView.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 07/03/21.
//

import SwiftUI

struct BackgroundView: View {
  
  var body: some View {
    LinearGradient(
      gradient: Gradient(
        colors: [
          Color(red: 50/255, green: 50/255, blue: 50/255),
          Color(red: 16/255, green: 16/255, blue: 16/255)
        ]),
      startPoint: .top,
      endPoint: .bottom)
  }
}

struct BackgroundView_Previews: PreviewProvider {
  static var previews: some View {
    BackgroundView()
  }
}
