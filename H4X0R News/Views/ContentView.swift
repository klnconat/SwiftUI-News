//
//  ContentView.swift
//  H4X0R News
//
//  Created by Onat KILINÇ on 2.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.postList, rowContent: { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    PostView(postPoint: post.points, postBody: post.title, postURL: post.url)
                }
            })
            .navigationBarTitle("News")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
    
}

#Preview {
    ContentView()
}

