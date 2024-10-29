//
//  TitleView.swift
//  mentee-assessment
//
//  Created by Xavier DeVore on 10/26/24.
// title for the timeline page

import SwiftUI

struct TitleView: View {
    var body: some View {
        Text("Squad Timeline")
            .font(.system(size: 36))
            .padding(.top)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
