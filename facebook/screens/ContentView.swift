//
//  ContentView.swift
//  facebook
//
//  Created by Utkirbek Mekhmonboev on 11/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                //profile, live, photo, room
                VStack{
                    HStack{
                        Image("proimage").resizable()
                            .frame(width: 60, height: 60).cornerRadius(30)
                        Text("What's on your mind?").font(.system(size: 17))
                    }.frame(height: 90).frame(maxWidth: .infinity, alignment: .topLeading).padding(.leading ,10).padding(.trailing, 10)
                    HStack{}.frame(height: 1).frame(maxWidth: .infinity).background(Color.gray .opacity(0.3))
                    HStack{
                        Spacer()
                        HStack{
                            Image("ic_live")
                            Text("Live")
                        }
                        Spacer()
                        HStack{
                            Image("ic_image")
                            Text("Photo")
                        }
                        Spacer()
                        HStack{
                            Image("ic_addvideo")
                            Text("Room")
                        }
                        Spacer()
                    }
                }
                //create room
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    HStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 20){
                                AddRoom()
                                RoomItem(isOnline: false)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                                RoomItem(isOnline: true)
                            }
                        }
                    }.frame(height: 100)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .padding(.leading, 10)
                }
                //create story
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    HStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                AddStoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                                StoryItem()
                            }
                        }
                    }.padding(.leading, 10)
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                    
                }
                //create post
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    PostItem(img_url:"post1")
                    PostItem(img_url:"post2")
                    UpdPostItem(proimg_url: "proimage")
                    PostItem(img_url:"post3")
                    NewPostItem(postimage: "post2")
                }
                
                
                .navigationBarItems(leading: Text("facebook")
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    .foregroundColor(.blue),
                                    trailing: HStack{
                    ZStack{
                        Circle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(width: 36, height: 36)
                        Image("ic_search")
                    }
                    ZStack{
                        Circle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(width: 36, height: 36)
                        Image("ic_chat")
                    }
                }
                )
                .navigationTitle("")
                .toolbarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    ContentView()
}
