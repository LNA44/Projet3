//
//  LineView.swift
//  TajMahal
//
//  Created by Ordinateur elena on 18/01/2025.
//

import SwiftUI

//ligne description restaurant WelcomeView()

struct LineViewRestaurant: View {
    let description : Description
    
    var body: some View {
        HStack{
            Image(systemName:description.icon)
            Text(description.text1)
            Spacer()
            Text(description.text2)
        }.padding()
    }
}

#Preview {
    LineViewRestaurant(description:descriptionList[0])
}
