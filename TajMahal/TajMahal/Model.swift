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

