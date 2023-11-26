//
//  StoryItem.swift
//  facebook
//
//  Created by Utkirbek Mekhmonboev on 11/25/23.
//

import SwiftUI

struct StoryItem: View {
    var body: some View {
        ZStack{
            Image("post1")
                .resizable()
                .frame(width: 150, height: 250)
                .scaledToFit()
            VStack(alignment: .leading){
                Image("proimage").resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.blue, lineWidth: 5))
                Spacer()
                Text("Mekhmonvoev").fontWeight(.bold).foregroundColor(.white).font(.system(size: 17))
                Text("Utkirbek").fontWeight(.bold).foregroundColor(.white).font(.system(size: 17))
            }.padding()
                
        }.frame(width: 150, height: 250).cornerRadius(15)
    }
}

#Preview {
    StoryItem()
}
