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
  
  /* Variables */
  @State private var offsetY: CGFloat = 0.0
  @State private var headerHeight: CGFloat = 0.0
  
  var body: some View {
      ZStack(alignment: .top) {
        VStack {
          AlbumHeaderView()
          PlayAndShuffleButtonsContainer()
        }
        .zIndex(1)
        .background(Color.x2A2A2A)
        // TODO: Calculate correctly this hardcoded value (-188)
        .offset(y: offsetY < -188 ? -188: offsetY)
        .overlay(
          // Get Header Height
          GeometryReader { proxy -> Color in
            let height = proxy.frame(in: .named(albumDetailScrollableSpace)).size.height
            headerHeight = height
            return Color.clear
          }
        )
        
        ScrollView(showsIndicators: false) {
          ForEach(Data.tracks) { track in
            TrackCellView(track: track)
          }
          .overlay(
            // Get offsetY using GeometryReader
            GeometryReader { proxy -> Color in
              let minY = proxy.frame(in: .named(albumDetailScrollableSpace)).minY
//              print("Offset Y: \(minY)")
              offsetY = minY
              
              // Return a view is required, just return a clear color view
              return Color.clear
            }
          )
        }
        .background(BackgroundView().edgesIgnoringSafeArea(.bottom))
        .coordinateSpace(name: albumDetailScrollableSpace)
        .padding(.top, topPaddingScroll())
      }
      .background(Color.x2A2A2A)
      .navigationBarTitle("", displayMode: .inline)
      .navigationBarColor(.x2A2A2A)
  }
  
  func topPaddingScroll() -> CGFloat {
    let padding = headerHeight + offsetY
    print("Header Height: \(headerHeight)")
    print("OffsetY: \(offsetY)")
    print("Top Padding: \(padding)\n")
    
    // Limit Max Top Padding
    if padding > headerHeight {
      return headerHeight
    }
    
    // Limit Min Top Padding
    // TODO: Calculate correctly this hardcoded value (88)
    if padding < 88 {
      return 88
    }
    
    return padding
  }
}



struct AlbumDetailView_Previews: PreviewProvider {
  static var previews: some View {
    AlbumDetailView()
  }
}
