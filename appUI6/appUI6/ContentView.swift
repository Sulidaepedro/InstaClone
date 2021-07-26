//
//  ContentView.swift
//  appUI6
//
//  Created by Giuseppe Grammatico on 24/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    init (feed: [Post], story:[Story]) {
        self.feed = feed
        self.stories = story
    }
    
    let feed: [Post]
    let stories: [Story]
    
    var body: some View {
        TabView{

        home(feed: Post.mocks(), story: Story.mocks())
        .tabItem {
            Image(systemName: "house")
        }

        CameraViewController()
            .edgesIgnoringSafeArea(.top)
        .tabItem {
            Image(systemName: "camera.fill")
        }
        }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(feed: Post.mocks(), story: Story.mocks())
            
    }
}

