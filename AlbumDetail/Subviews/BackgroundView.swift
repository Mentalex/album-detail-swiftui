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
      gradient: Gradient(colors: [.x2A2A2A,.x080808]),
      startPoint: .top,
      endPoint: .bottom)
  }
}

struct BackgroundView_Previews: PreviewProvider {
  static var previews: some View {
    BackgroundView()
  }
}
