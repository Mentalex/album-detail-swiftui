//
//  AlbumHeaderView.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 10/03/21.
//

import SwiftUI

struct AlbumHeaderView: View {
  
  var body: some View {
    VStack {
      Text("Random Access Memories")
        .scaledToFill()
        .font(.custom("Roboto-Black", size: 24))
        .foregroundColor(Color(red: 238/255, green: 238/255, blue: 238/255))
      
      HStack(alignment: .top)  {
        Image("album")
          .resizable()
          .frame(width: 125, height: 125, alignment: .center)
        
        VStack(alignment: .leading) {
          Text("de Daft Punk")
            .scaledToFill()
            .font(.custom("Roboto-Medium", size: 13))
            .foregroundColor(Color(red: 238/255, green: 238/255, blue: 238/255))
          
          Text("Álbum · 2013 · 13 canciones")
            .scaledToFill()
            .font(.custom("Roboto-Regular", size: 13))
            .foregroundColor(Color(red: 179/255, green: 179/255, blue: 179/255))
            .padding(.top, 2)
          
          CicleButtonsContainer()
        }.padding(.leading, 4)
        
        Spacer()
      }.padding([.leading, .trailing], 12)
    }
  }
}

struct AlbumHeaderView_Previews: PreviewProvider {
  static var previews: some View {
    AlbumHeaderView()
  }
}
