//
//  AlbumHeaderContainerView.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 26/03/21.
//

import SwiftUI

struct AlbumHeaderContainerView: View {
  var body: some View {
    VStack {
      AlbumHeaderView()
      PlayAndShuffleButtonsContainer()
    }.background(Color.x212121)
  }
}

struct AlbumHeaderContainerView_Previews: PreviewProvider {
  static var previews: some View {
    AlbumHeaderContainerView()
  }
}
