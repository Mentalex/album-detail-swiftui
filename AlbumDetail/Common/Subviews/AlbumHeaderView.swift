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
      VStack {
        Text(Album.name)
          .scaledToFill()
          .font(.custom("Roboto-Black", size: 24))
          .foregroundColor(.xEEEEEE)
        
        GeometryReader { proxy in
          let globalSize = proxy.frame(in: .global)
          
          HStack {
            Image("album")
              .resizable()
              .frame(width: globalSize.width * 0.3, height: globalSize.width * 0.3)
            
            VStack(alignment: .leading) {
              Text("de \(Album.artist)")
                .scaledToFill()
                .font(.custom("Roboto-Medium", size: 13))
                .foregroundColor(.xEEEEEE)
              
              Text("Álbum · 2013 · 13 canciones")
                .scaledToFill()
                .font(.custom("Roboto-Regular", size: 13))
                .foregroundColor(.xB3B3B3)
                .padding(.top, 2)
            }
            Spacer()
          }.overlay(
            CicleButtonsContainer().frame(width: globalSize.width * 0.7),
            alignment: .trailing
          )
//          .padding(.leading, 4)
          
//          Spacer()
        }
//        .padding([.leading, .trailing, .bottom], 12)
      }
      
      ScrollView {
        VStack {
          ForEach(0..<40) { _ in
            Text("Hello")
              .foregroundColor(.white)
              .padding()
              .frame(maxWidth: .infinity)
          }
        }.overlay(
          GeometryReader { proxy -> Color in
            let offsetY = proxy.frame(in: .named("Scroll")).origin.y
            print("Offset Y: \(offsetY)")
            return Color.clear
          }
        )
      }.coordinateSpace(name: "Scroll")
    }
  }
}

struct AlbumHeaderView_Previews: PreviewProvider {
  
  static let textSizeCategories: [ContentSizeCategory] = [
    .extraSmall,
    .extraExtraExtraLarge
  ]
  
  static var previews: some View {
    
//    Group {
      AlbumHeaderView()
        .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
        .previewDisplayName("iPhone 12 Pro Max")
      
//      AlbumHeaderView()
//        .previewDevice(PreviewDevice(rawValue: "iPod touch (7th generation)"))
//        .previewDisplayName("iPod touch")
//
//      AlbumHeaderView()
//        .previewDevice(PreviewDevice(rawValue: "iPod touch (7th generation)"))
//        .environment(\.sizeCategory, .extraExtraExtraLarge)
//        .previewDisplayName("iPod touch - Text Size \(ContentSizeCategory.extraExtraExtraLarge)")
        
//      ForEach(textSizeCategories, id: \.self) { sizeCategorie in
//        AlbumHeaderView()
//          .environment(\.sizeCategory, sizeCategorie)
//          .previewDisplayName("Dynamic Text Size - \(sizeCategorie)")
//      }
//    }
    .background(Color.x2A2A2A)
    
    // TODO: Fix horizontal overflow in iPod touch and Text Size extraExtraExtraLarge
    .previewLayout(.device)
  }
}
