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
                            Text("Menu")
                                .font(.title) 
                                .bold()
                        }
            }
        }
    }
    
}


#Preview {
    MenuView()
}
