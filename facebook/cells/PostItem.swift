//
//  PostItem.swift
//  facebook
//
//  Created by Utkirbek Mekhmonboev on 11/25/23.
//

import SwiftUI

struct PostItem: View {
    var img_url = "post1"
    var body: some View {
        HStack{
            ZStack(alignment: .bottomTrailing){
                Image("proimage").resizable().frame(width: 50,height: 50).cornerRadius(25)
                ZStack{
                    Circle().frame(width: 20,height: 20).foregroundColor(.white)
                    Circle().frame(width: 16,height: 16).foregroundColor(.blue)
                }
            }
            VStack{
                Text("Utkirbek").bold()
                HStack{
                    Text("18m")
                    Image("ic_public").resizable().frame(width: 24, height: 24)
                }
            }
            Spacer()
            Image("ic_more")
        }.padding(.leading, 10).padding(.top, 10).padding(.trailing, 10)
        Image(img_url).resizable().scaledToFit()
        HStack(spacing: 5){
            HStack(spacing: -10){
                Image("like").resizable()
                    .frame(width: 24, height: 24)
                Image("heart").resizable()
                    .frame(width: 20, height: 20)
            }
            Text("8.4K").foregroundColor(.black.opacity(0.7))
            Spacer()
            Text("240 Comments").foregroundColor(.black.opacity(0.7))
            Text("66 Shares").foregroundColor(.black.opacity(0.7))
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
    PostItem()
}
