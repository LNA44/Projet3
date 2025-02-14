//
//  Model.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import Foundation

enum SpiceLevel : Int {
	case light = 1
	case medium = 2
	case hot = 3
}

struct Dish {
	var name: String
	var description: String
	var allergens: String
	var ingredients: String
	var price : String
	var spiceLevel: SpiceLevel
	var imageName: String
}

struct Description {
	let icon : String
	let text1 : String
	let text2 : String
}

let descriptionList : [Description] = 
[Description(icon: "clock", text1: "Mardi", text2: "11h30 - 14h30 · 18h30 - 22h00"),
 Description(icon: "bag", text1:"Type de service", text2: "A emporter"),
 Description(icon: "map", text1: "12 Avenue de la Brique", text2: ""),
 Description(icon:"globe", text1: "www.tajmahal.fr", text2:""),
 Description(icon:"phone", text1:"06 12 34 56 78", text2:"")]

