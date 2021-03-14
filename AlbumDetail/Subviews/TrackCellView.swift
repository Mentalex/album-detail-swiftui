//
//  TrackCellView.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 13/03/21.
//

import SwiftUI

struct TrackCellView: View {
  
  var body: some View {
    HStack {
      VStack {
        Text("Give Life Back to Music")
          .frame(maxWidth: .infinity, alignment: .leading)
          .font(.custom("Roboto-Regular", size: 16))
          .foregroundColor(.xEEEEEE)
          .padding(.bottom, 2)
        
        Text("Daft Punk")
          .frame(maxWidth: .infinity, alignment: .leading)
          .font(.custom("Roboto-Regular", size: 14))
          .foregroundColor(.x5C5C5C)
      }
      
      Spacer()
      
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
    TrackCellView()
  }
}
