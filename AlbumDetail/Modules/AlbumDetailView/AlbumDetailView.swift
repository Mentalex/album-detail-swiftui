//
//  AlbumDetailView.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 26/03/21.
//

import SwiftUI

struct AlbumDetailView: View {
  
  var body: some View {
    if #available(iOS 14, *) {
      AlbumDetailView_iOS14()
    } else {
      AlbumDetailView_iOS13()
    }
  }
}

struct AlbumDetailView_Previews: PreviewProvider {
  static var previews: some View {
    AlbumDetailView()
  }
}
