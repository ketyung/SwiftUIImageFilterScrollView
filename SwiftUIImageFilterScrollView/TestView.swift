//
//  TestView.swift
//  SwiftUIImageFilterScrollView
//
//  Created by Christopher Chee on 08/01/2024.
//

import SwiftUI

struct TestView: View {
    @State private var inputImage: UIImage = UIImage(named: "Mindfulness.jpeg")!
    
    @State private var filteredImage: UIImage?

    var body: some View {
        VStack {
            // Display the original and filtered images
            if let filteredImage = filteredImage {
             
                Image(uiImage: filteredImage)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
            }
            
            //
            FilterScrollView(
                inputImage: inputImage,
                filteredImageHandler: { image in
                    // Capture the filtered image and update the UI
                    self.filteredImage = image
                }
            )
        
        }.onAppear{
            
            // Check if filteredImage is nil and assign inputImage to it
           if filteredImage == nil {
               filteredImage = inputImage
           }
        }
    }
}
