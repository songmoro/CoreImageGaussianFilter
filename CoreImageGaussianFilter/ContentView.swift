//
//  ContentView.swift
//  CoreImageGaussianFilter
//
//  Created by 송재훈 on 12/21/23.
//

import SwiftUI

struct ContentView: View {
    let gaussianFilter = GaussianFilter()
    
    @State var image = UIImage(named: "lena")!
    
    var body: some View {
        VStack {
            Image(uiImage: image)
            
            Button {
                image = gaussianFilter.applyGaussianFilter(image)
            } label: {
                Text("Gaussian Filter")
            }
        }
    }
}

#Preview {
    ContentView()
}
