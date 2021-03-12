//
//  AlbumDetailView.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 07/03/21.
//

import SwiftUI

struct AlbumDetailView: View {
  
  init() {
    // TODO: Remove clear color in Navigation Bar when scroll down.
    // NOTE: Meaby needs a Cutom TopView (& Geometry Reader) and not a NavigationView.
    UINavigationBar.appearance().barTintColor = .clear
    UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
  }
  
  var body: some View {
    NavigationView {
      ZStack {
        BackgroundView()
          .edgesIgnoringSafeArea(.all)
        
        ScrollView {
          AlbumHeaderView()
          PlayAndShuffleButtonsContainer()
        }
      }
      .navigationBarTitle("", displayMode: .inline)
    }
  }
}

struct AlbumDetailView_Previews: PreviewProvider {
  static var previews: some View {
    AlbumDetailView()
  }
}
