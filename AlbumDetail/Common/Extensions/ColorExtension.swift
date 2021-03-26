//
//  ColorExtension.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 13/03/21.
//

import SwiftUI

extension Color {

  init(hex: UInt, opacity: Double = 1.0) {
    self.init(
      .sRGB,
      red: Double((hex >> 16) & 0xFF) / 255,
      green: Double((hex >> 08) & 0xFF) / 255,
      blue: Double((hex >> 00) & 0xFF) / 255,
      opacity: opacity)
  }
}

extension Color {
  static let xEEEEEE = Color(hex: 0xEEEEEE)
  static let xB3B3B3 = Color(hex: 0xB3B3B3)
  static let x2A2A2A = Color(hex: 0x2A2A2A)
  static let x212121 = Color(hex: 0x212121)
  static let x080808 = Color(hex: 0x080808)
  static let x1E1E1E = Color(hex: 0x1E1E1E)
  static let xDE1717 = Color(hex: 0xDE1717)
  static let x5C5C5C = Color(hex: 0x5C5C5C)
  static let x4A4A4A = Color(hex: 0x4A4A4A)
}
