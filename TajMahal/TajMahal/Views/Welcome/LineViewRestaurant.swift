//
//  LineView.swift
//  TajMahal
//
//  Created by Ordinateur elena on 18/01/2025.
//

import SwiftUI

//ligne liste restaurant

struct LineViewRestaurant: View {
    let description : Description
    
    var body: some View {
        HStack{
            Image(systemName:description.icon)
            Text(description.text1)
				.font(.custom("PlusJakartaSans-Medium", size: 12))
            Spacer()
            Text(description.text2)
				.font(.custom("PlusJakartaSans-Medium", size: 12))
        }.padding(.leading, 10)
            .padding(.trailing, 10)
            .padding(.bottom, 5)
            .padding(.top, 5)
            .font(.system(size: 12, design: .default))
            .foregroundStyle(.darkgray)
    }
}

//#Preview {
//    LineViewRestaurant(description:descriptionList[0])
//}
