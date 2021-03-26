//
//  AlbumDetailView_iOS14.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 26/03/21.
//

import SwiftUI

struct AlbumDetailView_iOS14: View {
  
  var body: some View {
    ScrollView {
      LazyVStack(pinnedViews: [.sectionHeaders]) {
        Section(header: AlbumHeaderContainerView()) {
          ForEach(Data.tracks) { track in
            TrackCellView(track: track)
          }
        }
      }
    }
    .background(BackgroundView().edgesIgnoringSafeArea(.all))
    .navigationBarTitle("Album Detail", displayMode: .automatic)
    .navigationBarColor(.x2A2A2A) // This does not work
  }
}

struct AlbumDetailView_iOS14_Previews: PreviewProvider {
  static var previews: some View {
    AlbumDetailView_iOS14()
  }
}
