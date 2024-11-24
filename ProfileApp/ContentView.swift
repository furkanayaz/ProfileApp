//
//  ContentView.swift
//  ProfileApp
//
//  Created by FURKAN AYAZ on 23.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background").resizable()
                .ignoresSafeArea(.all)
            
            VStack(alignment: .center, content: {
                Image("avatar").resizable().aspectRatio(contentMode: .fit).frame(width: 180, height: 180).clipShape(.circle).padding(EdgeInsets(top: 25, leading: 0, bottom: 25, trailing: 0)).shadow(color: .pink, radius: 50)
                Text("Furkan Ayaz")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .shadow(radius: 5)
                Text("Kotlin Developer")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                
                HStack(alignment: .center, spacing: 25, content: {
                    Image(systemName: "heart.circle").resizable().frame(width: 35, height: 35).shadow(radius: 10)
                    Image(systemName: "network").resizable().frame(width: 35, height: 35).shadow(radius: 10)
                    Image(systemName: "message.circle").resizable().frame(width: 35, height: 35).shadow(radius: 10)
                    Image(systemName: "phone.circle").resizable().frame(width: 35, height: 35).shadow(radius: 10)
                }).foregroundStyle(.white).padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
                                
                RoundedRectangle(cornerRadius: 75)
                    .foregroundStyle(.white)
                    .frame(width: 200, height: 50)
                    .overlay(content: {
                        Text("Follow")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundStyle(.pink)
                    }).shadow(color: .pink, radius: 50).padding(EdgeInsets(top: 110, leading: 0, bottom: 0, trailing: 0))
                
                HStack(alignment: .center, spacing: 50, content: {
                    VStack(alignment: .center) {
                        Text("1775").font(.system(size: 30)).foregroundStyle(.pink)
                        Text("Appreciations").foregroundStyle(.gray)
                    }
                    
                    VStack(alignment: .center) {
                        Text("800").font(.system(size: 30)).foregroundStyle(.pink)
                        Text("Followers").foregroundStyle(.gray)
                    }
                    
                    VStack(alignment: .center) {
                        Text("231").font(.system(size: 30)).foregroundStyle(.pink)
                        Text("Following").foregroundStyle(.gray)
                    }
                }).padding(EdgeInsets(top: 15, leading: 0, bottom: 5, trailing: 0))
                
                VStack(alignment: .center, spacing: 10) {
                    Text("About You").font(.system(size: 30)).fontWeight(.semibold)
                    
                    Text("I'm an Android and Kotlin Developer for about 4 years. I'm passionate about learning new things and sharing my knowledge with others.").font(.system(size: 15)).opacity(0.75).foregroundStyle(.black)
                }.padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            })
        }
    }
}

#Preview {
    ContentView()
}
