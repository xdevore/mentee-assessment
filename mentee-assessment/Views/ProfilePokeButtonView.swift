//
//  ProfilePokeButtonView.swift
//  mentee-assessment
//
//  Created by Xavier DeVore on 10/26/24.
// name, profile photo, and button for poking another user in the scroll view

import SwiftUI

struct ProfilePokeButtonView: View {
    
    let name: String
    let imageName: String
    let isPoked: Bool
    let onPokeChange: () -> Void
    
    var body: some View {
        VStack {
            Text(name)
                .font(.title)
            ZStack() {
                Image(imageName)
                    .resizable()
                    .frame(width: 100, height: 70)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 2)
                    )
                    .shadow(radius: 5)
            
                // poke action
                Button(action: {
                    onPokeChange()
                }) {
                    Text(isPoked ? "Poked!" : "Poke!")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(isPoked ? Color.gray : Color.indigo)
                        .cornerRadius(12)
                }
                .padding(.top, 70)
                .frame(width: 100, height: 50)
                .opacity(0.8)
            }
        }
    }
}

struct ProfilePokeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePokeButtonView(
            name: "Xavier",
            imageName: "jason-profile",
            isPoked: true,
            onPokeChange: {
                print("Poke button tapped!")
            }
        )
    }
}
