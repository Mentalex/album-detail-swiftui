//
//  AlbumDetailView.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 07/03/21.
//

import SwiftUI

struct AlbumDetailView: View {
  
  var body: some View {
    NavigationView {
      ZStack {
        BackgroundView()
          .edgesIgnoringSafeArea(.all)
        
        ScrollView {
          AlbumHeaderView()
        }
      }
    }
  }
}

struct AlbumDetailView_Previews: PreviewProvider {
  static var previews: some View {
    AlbumDetailView()
  }
}

