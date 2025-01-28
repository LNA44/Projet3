//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack (spacing : 20){
                Image("TajMahal")
                    .resizable()
                    .scaledToFit()
                    .frame(width:600, height: 400)
                HStack{
                    VStack (alignment: .leading){
                        Text("Restaurant Indien")
                            .font(.system(size: 12, design: .default))
                            .foregroundStyle(.darkgray)
                        Text("Taj Mahal")
                            .font(.system(size: 18, weight: .bold, design: .default))
                    }
                    
                    Spacer()
                    
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width:50, height: 40)
                        .colorMultiply(.gray)
                    
                }
                .padding()
                
                VStack (spacing:0.1){
                    ForEach(descriptionList, id: \.text1) { description in
                        LineViewRestaurant(description: description) //description à partir des données du Model
                    }
                }
                NavigationLink (destination: MenuView()) {
                    Text("Accéder au menu")
                        .frame(width: 300, height: 20)
                        .padding()
                        .background(Color.customRed)
                        .cornerRadius(10)
                        .foregroundStyle(Color.white)
                        .font(.title3)
                    
                }.bold()
            }
        }
    }
}

//#Preview {
 //   WelcomeView()
//}
