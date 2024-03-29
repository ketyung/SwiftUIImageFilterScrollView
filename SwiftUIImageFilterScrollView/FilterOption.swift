//
//  FilterOption.swift
//  SwiftUIImageFilterScrollView
//
//  Created by Christopher Chee on 08/01/2024.
//

import Foundation

enum FilterOption: String, CaseIterable {
    case sepia = "Sepia"
    case blackAndWhite = "B&W"
    case vignette = "Vignette"
    case chrome = "Chrome"
    case fade = "Fade"
    case tone = "Tone"
    case transfer = "Transfer"

    var name: String {
        return self.rawValue
    }
}
