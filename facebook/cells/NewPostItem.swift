//
//  NewPostItem.swift
//  facebook
//
//  Created by Utkirbek Mekhmonboev on 11/25/23.
//

import SwiftUI

struct NewPostItem: View {
    var postimage = "post2"
    var width = UIScreen.main.bounds.width - 5
    var body: some View {
        HStack{
            ZStack(alignment: .bottomTrailing){
                Image("proimage").resizable().frame(width: 50,height: 50).cornerRadius(25)
                ZStack{
                    Circle().frame(width: 20,height: 20).foregroundColor(.white)
                    Circle().frame(width: 16,height: 16).foregroundColor(.blue)
                }
            }
            VStack(alignment: .leading){
                    Text("IT-Park").bold()
                HStack{
                    Text("18m")
                    Image("ic_public").resizable().frame(width: 24, height: 24)
                }
            }
            Spacer()
            Image("ic_more")
        }.padding(.leading, 10).padding(.top, 10).padding(.trailing, 10)
        VStack(alignment: .leading){
            Text("!? IT sohada frilansermisiz")
            Spacer()
            Text("Unda oxirigi qilgan ishlaringizni IT-Parkda namoyish eting!")
                .lineLimit(1)
        }.frame(height: 80).frame(maxWidth: .infinity)
            .padding()
        HStack(spacing: 5){
            Image(postimage).resizable().scaledToFit()
                .frame(width: width/2)
            Image(postimage).resizable().scaledToFit()
                .frame(width: width/2)
            
        }
        HStack(spacing: 5){
            HStack{
                Image("like").resizable()
                    .frame(width: 24, height: 24)
            }
            Text("8.4K").foregroundColor(.black.opacity(0.7))
            Spacer()
            Text("1 Share").foregroundColor(.black.opacity(0.7))
        }.padding(.leading, 10).padding(.top, 5).padding(.trailing, 10)
        HStack{}.frame(height: 0.5).frame(maxWidth: .infinity).background(Color.gray.opacity(0.5)).padding(.top, 5)
        HStack{
            Spacer()
            Image("like").resizable().frame(width: 30,height: 30)
            Text("Like")
            Spacer()
            Image("ic_comment").resizable().frame(width: 30,height: 30)
            Text("Comment")
            Spacer()
            Image("ic_send").resizable().frame(width: 30,height: 30)
            Text("Share")
            Spacer()
        }.frame(height: 40).frame(maxWidth: .infinity).padding(.top, 5)
        HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.5))
    }
}

#Preview {
    NewPostItem()
}
