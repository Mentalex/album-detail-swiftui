//
//  Data.swift
//  AlbumDetail
//
//  Created by Alex Tapia on 13/03/21.
//

import Foundation

struct Track: Identifiable {
  let id = UUID()
  let title: String
  let artists: String
}

struct Album {
  
  static var name: String {
    return "Random Access Memories"
  }
  
  static var artist: String {
    return "Daft Punk"
  }
  
  static var tracks: [Track] {
    return [
      Track(title: "Give Life Back to Music", artists: "Daft Punk"),
      Track(title: "The Game of Love", artists: "Daft Punk"),
      Track(title: "Giorgio by Moroder", artists: "Daft Punk"),
      Track(title: "Within", artists: "Daft Punk"),
      Track(title: "Instant Crush", artists: "Daft Punk"),
      Track(title: "Lose Yourself to Dance", artists: "Daft Punk"),
      Track(title: "Touch", artists: "Daft Punk"),
      Track(title: "Get Lucky", artists: "Daft Punk"),
      Track(title: "Beyond", artists: "Daft Punk"),
      Track(title: "Motherboard", artists: "Daft Punk"),
      Track(title: "Fragments of Time", artists: "Daft Punk"),
      Track(title: "Doin' It Right", artists: "Daft Punk"),
      Track(title: "Contact", artists: "Daft Punk")
    ]
  }
}
