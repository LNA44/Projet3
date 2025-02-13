//
//  DetailsView.swift
//  TajMahal
//
//  Created by Ordinateur elena on 18/01/2025.
//

import SwiftUI

// Affiche les données d'un plat

struct DetailsView: View {
	@Environment(\.presentationMode) var presentationMode
	var viewModel : ViewModel = ViewModel()
	let dish: Dish
	var body: some View {
		VStack (spacing:30){
			ZStack{
				Image(dish.imageName)
					.resizable()
					.scaledToFill()
					.frame(width: 350, height: 450)
					.clipped()//coupe ce qui dépasse du cadre
					.clipShape(RoundedRectangle(cornerRadius: 30))
				RoundedRectangle(cornerRadius: 60)
					.fill(Color.white)
					.frame(width:100, height:30)
					.offset(x:110,y:-200)
				
				ViewSpiceLevel(spiceLevel: dish.spiceLevel, dish: dish) //affiche le nombre de piments en fonction du niveau d'épices
					.offset(x:110, y:-200)
			}
			
			VStack (alignment: .leading){
				Text ("Allergènes:")
					.font(.custom("PlusJakartaSans-Bold", size: 12))
				
				Text(dish.allergens)
					.font(.custom("PlusJakartaSans-Regular", size: 12))
				
				Divider()
				
				Text("Ingrédients:")
					.font(.custom("PlusJakartaSans-Bold", size: 12))
				
				Text(dish.description)
					.font(.custom("PlusJakartaSans-Regular", size: 12))
			}
				.padding()
		Spacer()
		}.frame(height: 700)
		.foregroundStyle(.darkgray)
		.navigationBarBackButtonHidden(true) // Cache le bouton par défaut
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

//#Preview {
//    let viewModel: ViewModel = ViewModel()
//    DetailsView(dish : viewModel.apetizerArray[2])
//}
