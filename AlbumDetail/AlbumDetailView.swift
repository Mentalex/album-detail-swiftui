//
//  AlbumDetailView.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 07/03/21.
//

import SwiftUI

struct AlbumDetailView: View {
  
  var body: some View {
    NavigationView {
      ZStack {
        ScrollView {
          AlbumHeaderView()
          PlayAndShuffleButtonsContainer()
        }.background(BackgroundView().edgesIgnoringSafeArea(.bottom))
      }
      .navigationBarTitle("", displayMode: .inline)
      .navigationBarColor(.x2A2A2A)
    }
  }
}

struct AlbumDetailView_Previews: PreviewProvider {
  static var previews: some View {
    AlbumDetailView()
  }
}
