//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

//Présentation des plats sous forme de liste

struct MenuView: View {
    let viewModel: ViewModel = ViewModel()
    var body: some View {
        NavigationStack {
            List {
                Section (header: Text("Entrées").font(.subheadline).bold()){
                    ForEach(viewModel.apetizerArray, id:\.name ){ apetizer in
                        NavigationLink (destination : DetailsView(dish:apetizer)){
                            ZStack {
                                // Arrière-plan : RoundedRectangle
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(Color.white)
                                    .frame(width: 350, height: 120) // Taille de l'arrière-plan
                                    .offset(x: 5, y: 0)
                                LineViewMenu(dish: apetizer)
                            }
                            .frame(height: 110) // Fixe la hauteur globale de la ligne
                            .padding(.vertical, 2) // Espacement entre les éléments de la liste
                        }
                        .listRowSeparator(.hidden) // Supprime les séparateurs entre les éléments
                        .listRowBackground(Color.clear) // Supprime l'arrière-plan par défaut
                    }
                }
                Section (header: Text("Plats principaux").font(.subheadline).bold()){
                    ForEach(viewModel.mainCourseArray, id:\.name ){ mainCourse in
                        
                        NavigationLink (destination : DetailsView(dish:mainCourse)){
                            ZStack {
                                // Arrière-plan : RoundedRectangle
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(Color.white)
                                    .frame(width: 350, height: 120) // Taille de l'arrière-plan
                                    .offset(x: 5, y: 0)
                                LineViewMenu(dish: mainCourse)
                            }
                            .frame(height: 110) // Fixe la hauteur globale de la ligne
                            .padding(.vertical, 2) // Espacement entre les éléments de la liste
                        }
                        .listRowSeparator(.hidden) // Supprime les séparateurs entre les éléments
                        .listRowBackground(Color.clear) // Supprime l'arrière-plan par défaut
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline) //réduit taille titre
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Menu")
                        .font(.title)
                        .bold()
                }
                
            }
        }
    }
    
}


//#Preview {
//    MenuView()
//}
