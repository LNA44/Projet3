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
            Spacer()
            Text(description.text2)
        }.padding(.leading, 10)
            .padding(.trailing, 10)
            .padding(.bottom, 5)
            .padding(.top, 5)
			.font(.custom("PlusJakartaSans-SemiBold", size: 12))
            .foregroundStyle(.darkgray)
    }
}

//#Preview {
//    LineViewRestaurant(description:descriptionList[0])
//}
