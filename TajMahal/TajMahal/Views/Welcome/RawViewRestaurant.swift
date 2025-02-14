//
//  LineView.swift
//  TajMahal
//
//  Created by Ordinateur elena on 18/01/2025.
//

import SwiftUI

struct RawViewRestaurant: View {
	let description : Description
	var body: some View {
		HStack{
			Image(systemName:description.icon)
			Text(description.text1)
			Spacer()
			Text(description.text2)
		}
		.padding(.horizontal, 20)
		.padding(.vertical, 5)
		.font(.custom("PlusJakartaSans-SemiBold", size: 12))
		.foregroundStyle(.darkgray)
	}
}

#Preview {
	RawViewRestaurant(description:descriptionList[0])
}
