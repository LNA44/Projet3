//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu. Utile pour accéder à plsrs tableaux dans une même vue
    let viewModel: ViewModel = ViewModel()
    var body: some View {
        NavigationStack {
            List {
                Section (header: Text("Entrées").font(.subheadline).bold()){
                    ForEach(viewModel.apetizerArray, id:\.name ){ apetizer in
                        NavigationLink (destination : DetailsView(dish:apetizer)){
                            LineViewMenu(dish: apetizer)
                        }
                        .listRowInsets(EdgeInsets(top: 0.5, leading: 10, bottom: 0.5, trailing: 10))
                    }
                }
                Section (header: Text("Plats principaux").font(.subheadline).bold()){
                    ForEach(viewModel.mainCourseArray, id:\.name ){ mainCourse in
                        NavigationLink (destination:DetailsView(dish:mainCourse)) {
                            LineViewMenu(dish: mainCourse)
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline) //réduit taille titre
            .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("Menu") // Titre centré
                                .font(.title) // Police
                                .bold()
                        }
            }
        }
    }
    
}


#Preview {
    MenuView()
}
