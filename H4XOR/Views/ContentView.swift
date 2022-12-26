//
//  ContentView.swift
//  H4XOR
//
//  Created by Boughdiri Dorsaf on 23/12/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView {
            //to add the poss to return at the root screen
            List(networkManager.posts){
                post in
                NavigationLink(destination: detailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }            }
            //To ignore the padding default in the list widget
            .listStyle(PlainListStyle())
            .navigationBarTitle("H4XOR NEWS", displayMode: .automatic)
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
