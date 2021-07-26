//
//  home.swift
//  appUI6
//
//  Created by Giuseppe Grammatico on 09/07/2021.
//

import SwiftUI

struct home: View {
    
    init (feed: [Post], story:[Story]) {
        self.feed = feed
        self.stories = story
    }
    
    let feed: [Post]
    let stories: [Story]
    
    var body: some View {
        NavigationView{
            VStack{
                ScrollView(.horizontal){
                    HStack{
                    ForEach(stories, id: \.author.nickname, content: {story in
                        VStack{
                            ZStack{
                            Circle()
                                .fill(LinearGradient(gradient: Gradient(colors: [.blue, .green, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(width: 85, height: 85)
                                circleimageView(image: story.author.image, size: 80)
                            }
                            
                
                        Text(story.author.nickname)
                        }
                        .padding([.top, .bottom], 10)
                    })
                  }
                    .padding([.top, .bottom], 5)
                }
                .padding(.leading, 15)
                
                List(feed, id: \.author.nickname, rowContent: { post in
                    VStack(alignment: .leading){
                        HStack{
                            circleimageView(image: post.author.image, size: 50)
                                .padding([.leading, .trailing])
                            VStack(alignment: .leading){
                                Text(post.author.nickname)
                                    .font(.title3)
                                    .bold()
                                Text(post.luogo)
                                    .padding(.top, 0.2)
                            }
                        }
                        .padding([.top], 10)
                        Image(uiImage: post.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 300)
                            .clipped()
                        HStack{
                            Group{
                            Image(systemName: "heart")
                            Image(systemName: "bubble.right")
                            Image(systemName: "paperplane")
                            }
                            .font(.title)
                            .padding([.leading],10)
                            Spacer()
                            Image(systemName: "bookmark")
                                .font(.title)
                                .padding([.leading, .trailing],20)
                     }
                        .padding([.top, .bottom], 10)
                        Text(post.like)
                            .padding(.leading, 10)
                            .font(.title3)
                        Group{
                        Text(post.author.nickname)
                            .font(.title2)
                        +
                        Text("  ")
                        +
                        Text(post.description)
                        }
                        .padding(.leading, 10)
                  }
                
                })
                
                .padding([.leading, .trailing], -36)
            }
            .navigationBarTitle("InstaClone", displayMode: .inline)
        }
    }
}
struct home_Previews: PreviewProvider {
    static var previews: some View {
        home(feed: Post.mocks(), story: Story.mocks())
    }
 }

