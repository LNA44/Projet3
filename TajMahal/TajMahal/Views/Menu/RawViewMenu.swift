//
//  LienViewMenu.swift
//  TajMahal
//
//  Created by Ordinateur elena on 18/01/2025.
//

import SwiftUI

struct RawViewMenu: View {
	let dish: Dish
	var body: some View {
		HStack {
			Image(dish.imageName)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 110, height: 86)
				.clipShape(RoundedRectangle(cornerRadius: 10))
				.padding(5)
			VStack (alignment: .leading, spacing: 8) {
				Text(dish.name)
					.font(.custom("PlusJakartaSans-Bold", size: 14))
				Text(dish.description)
				HStack (alignment: .firstTextBaseline){
					Text(dish.price)
						.font(.custom("PlusJakartaSans-Bold", size: 14))
					Spacer()
					ViewSpiceLevel(spiceLevel: dish.spiceLevel, dish: dish)
				}
			}.padding(.leading, 5)
				.padding(.trailing, 10)
				.foregroundStyle(.darkgray)
		}.font(.custom("PlusJakartaSans-Regular", size: 12))
	}
}


#Preview {
    let viewModel = ViewModel()
    RawViewMenu(dish: viewModel.apetizerArray[0])
}
