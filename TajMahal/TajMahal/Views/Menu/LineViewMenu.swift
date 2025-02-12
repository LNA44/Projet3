//
//  LienViewMenu.swift
//  TajMahal
//
//  Created by Ordinateur elena on 18/01/2025.
//

import SwiftUI

//Affiche les données de chaque plat sous forme de ligne

struct LineViewMenu: View {
    let viewModel: ViewModel = ViewModel()
    let dish: Dish
    var body: some View {
		HStack {
            RoundedRectangleImage(image:dish.imageName)
                .frame(width: 112, height: 86)
				.offset(x:-20)
            VStack (alignment: .leading, spacing:10) {
                Text(dish.name)
                //.bold()
                    .foregroundStyle(.darkgray)
					.font(.custom("PlusJakartaSans-Bold", size: 14))

                Text(dish.description)
                    .foregroundStyle(.darkgray)
					.font(.custom("PlusJakartaSans-Regular", size: 12))
                HStack (spacing:50){
                    Text(dish.price)
                        .foregroundStyle(.darkgray)
						.font(.custom("PlusJakartaSans-Bold", size: 14))
					dish.spiceLevel.spiceRepresentation().offset(x:20,y:0) //affiche le nombre de piments en fonction du niveau d'épices
                }
                .padding(5)
            }
        }
        .frame(maxHeight: .infinity)
        .offset(x:17, y:0)
        .padding(.trailing)
    }
}


//#Preview {
 //   let viewModel = ViewModel() //création instance de viewModel qui n'est pas accessible en dehors de MenuView
  //  LineViewMenu(dish: viewModel.apetizerArray[0])
//}
