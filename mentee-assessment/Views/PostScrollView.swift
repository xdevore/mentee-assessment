//
//  PostView.swift
//  mentee-assessment
//
//  Created by Xavier DeVore on 10/26/24.
//  view for the post scroll view - just one post in this example, but can scroll for multiple

import SwiftUI

struct PostScrollView: View {
    
    let uploads: [Upload]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 8) {
                
                // iterates through each post in uploads, creates section for them in the timeline
                ForEach(uploads, id: \.id) { upload in
                    HStack {
                        Image(upload.user.profileImageName)
                            .resizable()
                            .frame(width: 24, height: 24)
                        Text(upload.user.name).bold()
                            .font(.title)
                        Spacer()
                        Text(upload.uploadTime.formatted(date: .omitted, time: .shortened))
                            .foregroundColor(.gray)
                            .font(.title2)
                    }
                    Image(upload.uploadedImageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:360, height: 360)
                        .cornerRadius(10)
                    HStack {
                        Image(systemName: "star")
                        Text("\(upload.reactions)")
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

struct PostScrollView_Previews: PreviewProvider {
    static var previews: some View {
        PostScrollView(uploads: SampleData.uploads)
    }
}
