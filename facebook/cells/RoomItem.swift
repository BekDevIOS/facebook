//
//  RoomItem.swift
//  facebook
//
//  Created by Utkirbek Mekhmonboev on 11/25/23.
//

import SwiftUI

struct RoomItem: View {
    var isOnline = false
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            Image("proimage")
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(30)
            if isOnline{
                ZStack{
                    Circle().frame(width: 24, height: 24).foregroundColor(.white)
                    Circle().frame(width: 18,height: 18).foregroundColor(.green)
                }
            }
            
        }
    }
}

#Preview {
    RoomItem()
}
