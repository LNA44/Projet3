//
//  Model.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import Foundation
import SwiftUI

struct Chilis {
    let spiceLevel : SpiceLevel
}

// Cette enumération répertorie 3 niveaux de piment
enum SpiceLevel : Int {
    case light = 1
    case medium = 2
    case hot = 3
    
//cette fonction associe à chaque niveau de piment le nombre de flammes rouges et grises
    func spiceRepresentation() -> some View {
        HStack {
                    // Piments rouges
                    ForEach(0..<self.rawValue, id: \.self) { _ in
                        Image(systemName: "flame.fill")
                            .foregroundColor(.red)
                    }
                    // Piments gris
                    ForEach(0..<(3 - self.rawValue), id: \.self) { _ in
                        Image(systemName: "flame.fill")
                            .foregroundColor(.gray)
                    } // TODO : remplacer flame par piments
        }
    }
}



// Représente l'objet "plat", qui figure sur la carte du menu
struct Dish { //utilisé dans MenuView et DetailsView
    var name: String
    var description: String
    var allergens: String
    var ingredients: String
    var price : String
    var spiceLevel: SpiceLevel
    var imageName: String
}

struct Description { //utilisé dans WelcomeView
    let icon : String
    let text1 : String
    let text2 : String
}

let descriptionList : [Description] = //utilisé dans WelcomeView
[Description(icon: "clock", text1: "Mardi", text2: "11h30 - 14h30 · 18h30 - 22h00"),
     Description(icon: "bag", text1:"Type de service", text2: "A emporter"),
     Description(icon: "map", text1: "12 Avenue de la Brique", text2: ""),
     Description(icon:"globe", text1: "www.tajmahal.fr", text2:""),
     Description(icon:"phone", text1:"06 12 34 56 78", text2:"")]

