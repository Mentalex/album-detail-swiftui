//
//  TrackCellView.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 13/03/21.
//

import SwiftUI

struct TrackCellView: View {
  
  let track: Track
  
  init(track: Track) {
    self.track = track
  }
  
  var body: some View {
    HStack {
      VStack {
        Text(track.title)
          .frame(maxWidth: .infinity, alignment: .leading)
          .font(.custom("Roboto-Regular", size: 16))
          .foregroundColor(.xEEEEEE)
          .padding(.bottom, 2)
        
        Text(track.artists)
          .frame(maxWidth: .infinity, alignment: .leading)
          .font(.custom("Roboto-Regular", size: 14))
          .foregroundColor(.x5C5C5C)
      }
      
      Button(action: {}, label: {
        Image(systemName: "ellipsis").font(.largeTitle)
      })
      .frame(width: 32, height: 32)
      .foregroundColor(.x4A4A4A)
      
    }.padding([.leading, .top, .trailing], 12)
  }
}

struct TrackCellView_Previews: PreviewProvider {
  static var previews: some View {
    TrackCellView(track: Data.tracks.first ?? Track(title: "Title", artists: "Artists"))
      .background(Color.x2A2A2A)
      .previewLayout(.sizeThatFits)
  }
}
