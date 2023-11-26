//
//  AddStoryItem.swift
//  facebook
//
//  Created by Utkirbek Mekhmonboev on 11/25/23.
//

import SwiftUI

struct AddStoryItem: View {
    var body: some View {
        VStack{
            VStack(spacing: -20){
                Image("proimage").resizable()
                    .frame(width: 150, height: 250*2/3)
                    .padding(.top, -20)
                Image("plus").resizable()
                    .frame(width: 40,height: 40)
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 3))
            }
            VStack{
                Text("Create a").fontWeight(.bold)
                Text("Story").fontWeight(.bold)
            }
        }.frame(width: 150, height: 250)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(15)
    }
}

#Preview {
    AddStoryItem()
}
