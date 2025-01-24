//
//  RoundedRectangleImage.swift
//  TajMahal
//
//  Created by Ordinateur elena on 18/01/2025.
//

import SwiftUI

struct RoundedRectangleImage: View {
    var image : String
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 5))
    }
}

//#Preview {
//    RoundedRectangleImage(image: "Pakoras")
//}
