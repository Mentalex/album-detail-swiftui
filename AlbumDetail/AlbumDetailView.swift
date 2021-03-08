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
    }.edgesIgnoringSafeArea(.all)
  }
}

let gradient = Gradient(colors: [])

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    AlbumDetailView()
  }
}
