//
//  LienViewMenu.swift
//  TajMahal
//
//  Created by Ordinateur elena on 18/01/2025.
//

import SwiftUI
//déclaration ViewModel inutile car on utilise uniquement le tableau des apetizers.
struct LineViewMenu: View {
    let viewModel: ViewModel = ViewModel()
    let dish: Dish
    var body: some View {
        HStack{
            RoundedRectangleImage(image:dish.imageName)
                .frame(width: 80, height: 80)
            VStack (alignment: .leading, spacing:0.5) {
                Text(dish.name)
                    .font(.system(size: 15))
                    .bold()
                Text(dish.description)
                    .font(.system(size: 10))
                HStack {
                    Text(dish.price)
                        .font(.system(size: 11))
                    Spacer()
                    dish.spiceLevel.spiceRepresentation()
                }.padding(5)
            }.padding()
        }
    }
}


#Preview {
    let viewModel = ViewModel() //création instance de viewModel qui n'est pas accessible en dehors de MenuView
    LineViewMenu(dish: viewModel.apetizerArray[0])
}
