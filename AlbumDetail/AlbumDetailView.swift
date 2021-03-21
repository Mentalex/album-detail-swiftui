//
//  AlbumDetailView.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 07/03/21.
//

import SwiftUI

struct AlbumDetailView: View {
  
  /* Constants */
  private let albumDetailScrollableSpace = "AlbumDetailScrollableSpace"
  
  /* States */
  @State private var offsetY: CGFloat = 0.0
  
  var body: some View {
    NavigationView {
      VStack {
        AlbumHeaderView()
          .offset(y: offsetY < 0 ? 0 : offsetY)
        PlayAndShuffleButtonsContainer()
          .offset(y: offsetY < 0 ? 0 : offsetY)
        
        ScrollView(showsIndicators: false) {
          ForEach(Data.tracks) { track in
            TrackCellView(track: track)
          }
          .overlay(
            // Get offsetY using GeometryReader
            GeometryReader { proxy -> Color in
              let minY = proxy.frame(in: .named(albumDetailScrollableSpace)).minY
              print("Offset Y: \(minY)")
              DispatchQueue.main.async { offsetY = minY }
              
              // Return a view is required, just return a clear color view
              return Color.clear
            }
          )
        }
        .coordinateSpace(name: albumDetailScrollableSpace)
      }
      .background(BackgroundView().edgesIgnoringSafeArea(.bottom))
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
