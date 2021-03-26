//
//  MainView.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 26/03/21.
//

import SwiftUI

struct MainView: View {
  var body: some View {
    List {
      NavigationLink(destination: AlbumDetailView()){
        Text("AlbumDetail")
      }
    }
    .navigationTitle("Claro video")
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      MainView()
    }
  }
}
