//
//  AddRoom.swift
//  facebook
//
//  Created by Utkirbek Mekhmonboev on 11/25/23.
//

import SwiftUI

struct AddRoom: View {
    var body: some View {
        ZStack{
            HStack{}.frame(width: 150, height: 60).overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.blue, lineWidth: 1.0))
            HStack{
            Image("createRoom").resizable().frame(width: 50, height: 50)
                VStack(alignment: .leading){
                    Text("Create").foregroundColor(.blue)
                    Text("Room").foregroundColor(.blue)
                }
            }
        }
    }
}

#Preview {
    AddRoom()
}
