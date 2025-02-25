//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

struct ViewWelcome: View {
	let viewModel = ViewModel()
	var body: some View {
		NavigationStack {
			VStack (spacing : 20){
				Image("TajMahal")
					.resizable()
					.scaledToFit()
					.frame(width:900, height: 450)
				HStack{
					VStack (alignment: .leading){
						Text("Restaurant Indien")
							.font(.custom("PlusJakartaSans-Regular", size: 12))
							.foregroundStyle(.darkgray)
						Text("Taj Mahal")
							.font(.custom("PlusJakartaSans-ExtraBold", size: 18))
					}
					Spacer()
					Image("Logo")
						.resizable()
						.scaledToFit()
						.frame(width:50, height: 40)
						.colorMultiply(.gray)
				}
				.padding(20)
				
				VStack (spacing:0.1){
					ForEach(viewModel.descriptionList, id: \.text1) { description in
						RawViewRestaurant(description: description)
					}
				}
				NavigationLink (destination: ViewMenu()) {
					Text("Accéder au menu")
						.frame(width: 300, height: 20)
						.padding(.vertical, 10)
						.padding(.horizontal, 30)
						.background(Color.customRed)
						.cornerRadius(10)
						.foregroundStyle(Color.white)
						.font(.system(size: 16))
				}.bold()
					.offset(y:10)
			}
		}
	}
}

#Preview {
	ViewWelcome()
}
