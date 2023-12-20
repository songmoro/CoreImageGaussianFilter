//
//  GaussianFilter.swift
//  CoreImageGaussianFilter
//
//  Created by 송재훈 on 12/21/23.
//

import SwiftUI
import CoreImage

class GaussianFilter {
    func applyGaussianFilter(_ image: UIImage) -> UIImage {
        let context = CIContext()
        let ciImage = CIImage(image: image)!.applyingGaussianBlur(sigma: 1.0)
        let cgImage = context.createCGImage(ciImage, from: ciImage.extent)
        
        return UIImage(cgImage: cgImage!)
    }
}
