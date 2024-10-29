//
//  ProfilePokeScrollView.swift
//  mentee-assessment
//
//  Created by Xavier DeVore on 10/26/24.
// scroll view for the users that the current user is interacting with and has poked or not poked

import SwiftUI

struct ProfilePokeScrollView: View {
    
    // list of users to put into the scroll view
    let users: [User]
    
    // tracking pokes
    @EnvironmentObject var pokeModel: PokeModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                Spacer()
                
                // iterating through users list (3 users) in sample data, creating a ProfilePokeButtonView for each
                ForEach(users, id: \.id) { user in
                    ProfilePokeButtonView(
                        name: user.name,
                        imageName: user.profileImageName,
                        isPoked: pokeModel.isUserPoked(userId: user.id),
                        onPokeChange: {
                            pokeModel.togglePoke(for: user.id)
                        }
                    )
                }
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.bottom, 25)
        }
    }
}

struct ProfilePokeScrollView_Previews: PreviewProvider {
    static var previews: some View {
        
        let currentUserId = SampleData.currentUser.id
        let pokeModel = PokeModel(currentUserId: currentUserId)
        pokeModel.pokedUsers = []

        return ProfilePokeScrollView(users: SampleData.users)
            .environmentObject(pokeModel) // Inject the PokeModel instance
    }
}
