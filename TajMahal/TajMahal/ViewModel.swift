//
//  ViewModel.swift
//  TajMahal
//
//  Created by Amandine Cousin on 07/11/2023.
//

import Foundation
import SwiftUI

struct ViewModel {
    
    // Stocke les entrées qui composent le menu du restaurant
    let apetizerArray : [Dish] =
    [Dish(name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", price : "5,50 €", spiceLevel: .medium, imageName: "Samosas"),
     Dish(name: "Pakoras", description: "Beignets de légumes enrobés de pâte épicée et frits", allergens: "Sans allergènes majeurs", ingredients: "Légumes assortis (aubergines, oignons, épinards), farine de pois chiches, épices, huile", price : "5,00 €",spiceLevel: .light, imageName: "Pakoras"),
     Dish(name: "Aloo Tikki", description: "Galettes de pommes de terre épicées et croustillantes", allergens: "Sans allergènes majeurs", ingredients: "Pommes de terre, épices, farine de pois chiches",price : "5,50 €", spiceLevel: .medium, imageName: "Aloo")]
    
    // Stocke les plats qui composent le menu du restaurant
    let mainCourseArray : [Dish] =
    [Dish(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche",price : "13,00 €", spiceLevel: .medium, imageName: "Tikka Masala"),
     Dish(name: "Biryani aux légumes", description: "Riz parfumé cuit avec des légumes et des épices", allergens: "Noix de cajou, riz", ingredients: "Riz basmati, légumes assortis (carottes, petits pois, haricots verts), noix de cajou, raisins secs, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre", price : "10,50 €",spiceLevel: .medium, imageName: "Biryani"),
     Dish(name: "Rogan Josh", description: "Agneau mijoté dans une sauce épicée", allergens: "Ail, oignon", ingredients: "Agneau, oignons, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, huile, coriandre fraîche", price : "5,50 €", spiceLevel: .hot, imageName: "Rogan Josh")]
   

}


