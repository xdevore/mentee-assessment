//
//  BottomNavigationView.swift
//  mentee-assessment
//
//  Created by Xavier DeVore on 10/26/24.
//  bottom navigation for the timeline page

import SwiftUI

struct BottomNavigationView: View {
    
    // closure to change the view
    var changeView: (BottomNavIcon) -> Void
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 10)

            Button(action: {
                changeView(.person)
            }) {
                Image(systemName: "person")
            }

            Spacer()

            Button(action: {
                changeView(.flame)
            }) {
                Image(systemName: "flame")
            }

            Spacer()

            Button(action: {
                changeView(.plus)
            }) {
                Image(systemName: "plus.circle")
            }

            Spacer()

            Button(action: {
                changeView(.clock)
            }) {
                Image(systemName: "clock")
            }

            Spacer()
                .frame(width: 10)
        }
        .font(.title)
        .padding()
    }
}

// enum for each icon in the nav bar
enum BottomNavIcon {
    case person
    case flame
    case plus
    case clock
}

struct BottomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationView { icon in
            print("Button tapped! Icon: \(icon)")
        }
    }
}
