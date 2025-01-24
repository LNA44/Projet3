//
//  DetailsView.swift
//  TajMahal
//
//  Created by Ordinateur elena on 18/01/2025.
//

import SwiftUI

// Affiche les données d'un plat

struct DetailsView: View {
    var viewModel : ViewModel = ViewModel()
    let dish: Dish
    var body: some View {
        NavigationStack{
            VStack (spacing: 20){
                
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
                        .offset(x:110,y:-190)
                    
                    dish.spiceLevel.spiceRepresentation() //affiche le nombre de piments en fonction du niveau d'épices
                        .offset(x:110, y:-190)
                }
                
                VStack (alignment: .leading, spacing:10){
                    Text ("Allergènes:")
                        .font(.system(size: 12, weight: .bold, design: .default))
                    
                    Text(dish.allergens)
                        .font(.system(size: 12, design: .default))
                    
                    Divider()
                    
                    Text("Ingrédients:")
                        .font(.system(size: 12, weight: .bold, design: .default))
                    
                    Text(dish.description)
                        .font(.system(size: 12, design: .default))
                }.padding()
                
            }
            .foregroundStyle(.darkgray)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text(dish.name)
                        .font(.title)
                        .bold()
                }
            }
        }
    }
}

//#Preview {
//    let viewModel: ViewModel = ViewModel()
//    DetailsView(dish : viewModel.apetizerArray[2])
//}
