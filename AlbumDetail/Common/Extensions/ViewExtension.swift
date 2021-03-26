//
//  ViewExtension.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 13/03/21.
//

import SwiftUI

extension View {
  
  func navigationBarColor(_ backgroundColor: Color) -> some View {
    modifier(NavigationBarModifier(backgroundColor: backgroundColor))
  }
  
}
