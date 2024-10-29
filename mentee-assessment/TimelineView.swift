//
//  TimelineView.swift
//  mentee-assessment
//
//  Created by Xavier DeVore on 10/26/24.
//

import SwiftUI

struct TimelineView: View {
    
    @State private var isEmptyView: Bool = false
    @StateObject private var pokeModel = PokeModel(currentUserId: SampleData.currentUser.id)
    
    var body: some View {
        VStack {
            if isEmptyView {
                EmptyView()
            } else {
                
                // main page
                VStack(spacing: 32) {
                    TitleView()
                    ProfilePokeScrollView(users: SampleData.users)
                        .environmentObject(pokeModel)
                    PostScrollView(uploads: SampleData.uploads)
                }
            }
            
            // nav bar
            BottomNavigationView(changeView: { icon in
                switch icon {
                case .flame:
                    if isEmptyView {
                        isEmptyView.toggle()
                    }
                default:
                    if !isEmptyView {
                        isEmptyView.toggle()
                    }
                }
            })
            .frame(height: 50)
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}
