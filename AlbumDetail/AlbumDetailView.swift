//
//  AlbumDetailView.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 07/03/21.
//

import SwiftUI

struct AlbumDetailView: View {
  
  var body: some View {
    ZStack {
      BackgroundView()
      
      VStack {
        
        Text("Random Access Memories")
          .font(.system(size: 24, weight: .bold))
          .foregroundColor(.white)
          .bold()
        
        HStack(alignment: .top)  {
          
          Image("album")
            .resizable()
            .frame(width: 125, height: 125, alignment: .center)
          
          VStack(alignment: .leading) {
            
            Text("de Daft Punk")
              .font(.system(size: 14, weight: .regular))
              .foregroundColor(.white)
            
            Text("Álbum · 2013 · 13 canciones")
              .font(.system(size: 14, weight: .regular))
              .foregroundColor(.gray)
              .padding(.top, 2)
            
            HStack {
              CircleButton(imageName: "heart")
              Spacer()
              CircleButton(imageName: "arrow.down")
              Spacer()
              CircleButton(imageName: "square.and.arrow.up")
            }.padding(.top, 12)
          }
          .padding(.leading, 4)
          
          Spacer()
        }.padding([.leading, .trailing], 12)
      }
    }.edgesIgnoringSafeArea(.all)
  }
}

let gradient = Gradient(colors: [])

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    AlbumDetailView()
  }
}
