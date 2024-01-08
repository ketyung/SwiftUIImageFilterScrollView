//
//  FilterView.swift
//  SwiftUIImageFilterScrollView
//
//  Created by Christopher Chee on 08/01/2024.
//

import SwiftUI

struct FilterView: View {
    
    let filter: FilterOption // FilterOption is an enum containing filter information
    
    var body: some View {
        VStack {
            Text(filter.name)
            .font(.headline)
            .foregroundColor(.white)
            .background(Color.clear)
        }
    }
}
