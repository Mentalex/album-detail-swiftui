//
//  AlbumDetailView_iOS14.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 26/03/21.
//

import SwiftUI

struct AlbumDetailView_iOS14: View {
  
  // Use this to pop view when clicked button
  @Environment(\.presentationMode) var presentation
//  Button("Back Button") {
//    presentation.wrappedValue.dismiss()
//  }
  
  /* Constants */
  let safeAreaInsets = UIApplication.shared.windows.first?.safeAreaInsets
  
  var body: some View {
    VStack {
      VStack {
        Text(Album.name)
          .foregroundColor(.white)
        
        Text(Album.artist)
          .foregroundColor(.gray)
      }
      .frame(maxWidth: .infinity)
      .overlay(
        Button(action: { presentation.wrappedValue.dismiss() }, label: {
          Image(systemName: "chevron.backward")
            .foregroundColor(.xEEEEEE)
            .font(.title)
        }), alignment: .leading
      )
      .padding()
      .background(Color.x212121)
      
      ScrollView {
        LazyVStack(pinnedViews: [.sectionHeaders]) {
          Section(header: AlbumHeaderContainerView()) {
            ForEach(Album.tracks) { track in
              TrackCellView(track: track)
            }
          }
        }
      }
      // Top view to cover Top Safe Area,
      // This is commented because in preview doesn't work
  //    .overlay(
  //      Color.x212121.frame(height: safeAreaInsets?.top).ignoresSafeArea(.all, edges: .top),
  //      alignment: .top
  //    )
    }
    .background(Color.x212121.edgesIgnoringSafeArea(.all))
    .navigationBarHidden(true)
  }
}

struct AlbumDetailView_iOS14_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      AlbumDetailView_iOS14()
    }
  }
}
