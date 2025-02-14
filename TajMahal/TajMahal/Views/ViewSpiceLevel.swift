//
//  ViewSpiceLevel.swift
//  TajMahal
//
//  Created by Ordinateur elena on 13/02/2025.
//

import SwiftUI

struct ViewSpiceLevel: View {
	let spiceLevel : SpiceLevel
	let dish : Dish
	var body: some View {
		HStack { //associe à chaque niveau de piment le nombre de flammes rouges et grises
			// Piments rouges
			ForEach(0..<dish.spiceLevel.rawValue, id: \.self) { _ in
				Image("Chili_red")
			}
			// Piments gris
			ForEach(0..<(3 - dish.spiceLevel.rawValue), id: \.self) { _ in
				Image("Chili_gray")
			}
		}
	}
}

#Preview {
	let viewModel = ViewModel()
	ViewSpiceLevel(spiceLevel: SpiceLevel.medium, dish: viewModel.apetizerArray[0])
}
