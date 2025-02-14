//
//  DetailsView.swift
//  TajMahal
//
//  Created by Ordinateur elena on 18/01/2025.
//

import SwiftUI

struct ViewDetails: View {
	@Environment(\.presentationMode) var presentationMode
	var viewModel : ViewModel = ViewModel()
	let dish: Dish
	var body: some View {
		VStack {
			ZStack {
				Image(dish.imageName)
					.resizable()
					.scaledToFill()
					.frame(width: 350, height: 450)
					.clipped()//coupe ce qui dépasse du cadre
					.clipShape(RoundedRectangle(cornerRadius: 10))
				RoundedRectangle(cornerRadius: 60)
					.fill(Color.white)
					.frame(width:74, height:22)
					.offset(x:125,y:-200)
				ViewSpiceLevel(spiceLevel: dish.spiceLevel, dish: dish)
					.offset(x:125, y:-200)
			}.background(Color .blue)
			VStack (alignment: .leading){
				Text ("Allergènes:")
					.font(.custom("PlusJakartaSans-Bold", size: 12))
					.padding(.bottom, 5)
				Text(dish.allergens)
					.padding(.bottom, 7)
				Divider()
				
				Text("Ingrédients:")
					.font(.custom("PlusJakartaSans-Bold", size: 12))
					.padding(.top, 7)
					.padding(.bottom, 5)
				Text(dish.description)
			}.background(Color .red)
			.padding(30)
			Spacer()
		}.background(Color .yellow)
		.font(.custom("PlusJakartaSans-Regular", size: 12))
		.frame(height: 700)
		.foregroundStyle(.darkgray)
		.navigationBarBackButtonHidden(true)
		.navigationBarTitleDisplayMode(.inline)
		.toolbar {
			ToolbarItem(placement: .topBarLeading) {
				Button(action: {
					presentationMode.wrappedValue.dismiss()
				}) {
					Image("Back")
						.foregroundColor(.blue)
				}
			}
			ToolbarItem(placement: .topBarLeading) {
				Text (dish.name)
					.font(.system(size:24, weight:.bold))
			}
		}
	}
}

#Preview {
    let viewModel: ViewModel = ViewModel()
    ViewDetails(dish : viewModel.apetizerArray[2])
}
