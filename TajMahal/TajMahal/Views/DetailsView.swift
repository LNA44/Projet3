//
//  DetailsView.swift
//  TajMahal
//
//  Created by Ordinateur elena on 18/01/2025.
//

import SwiftUI

struct DetailsView: View {
    var viewModel : ViewModel = ViewModel()
    let dish: Dish
    var body: some View {
        NavigationStack{
            VStack (spacing: 50){
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
                    
                    dish.spiceLevel.spiceRepresentation()
                        .offset(x:110, y:-190)
                }
                VStack (alignment: .leading, spacing:10){
                    Text ("Allergènes:")
                        .font(.headline)
                        .bold()
                    
                    Text(dish.allergens)
                        .font(.system(size: 15))
                    
                    Divider()
                    
                    Text("Ingrédients:")
                        .font(.headline)
                        .bold()
                    
                    Text(dish.description)
                        .font(.system(size: 15))
                }.padding()
                
            }
            
            
            
            
            
            
            .navigationBarTitleDisplayMode(.inline) //réduit taille titre
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) { //titre sur le côté gauche
                    Text(dish.name)
                                .font(.title) // Police
                                .bold()
                        }
            }
        }
    }
}

#Preview {
    let viewModel: ViewModel = ViewModel()
    DetailsView(dish : viewModel.apetizerArray[2])
}
