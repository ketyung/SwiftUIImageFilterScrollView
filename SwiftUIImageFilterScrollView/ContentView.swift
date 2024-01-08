//
//  ContentView.swift
//  SwiftUIImageFilterScrollView
//
//  Created by Christopher Chee on 08/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isImagePickerPresented = false
        
    @State private var selectedImage: UIImage? = nil

    @State private var filteredImage: UIImage? = nil

    var body: some View {
        // TestView()
        
        VStack(spacing:10) {
            if let image = filteredImage ?? selectedImage {
                VStack(spacing: 10) {
                    Image(uiImage: image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300)

                    if let sImage = selectedImage {
                    
                        FilterScrollView(
                            inputImage: sImage,
                            filteredImageHandler: { filteredImage in
                                // Capture the filtered image and update the UI
                                self.filteredImage = filteredImage
                            }
                        )
                    }
                    
                    
                }
            }
            Button("Select An Image") {
                selectedImage = nil
                isImagePickerPresented = true
            }
        }
        .sheet(isPresented: $isImagePickerPresented) {
            ImagePickerViewRepresentable(selectedImage: $selectedImage)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
