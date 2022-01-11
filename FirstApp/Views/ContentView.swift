//
//  ContentView.swift
//  FirstApp
//
//  Created by daniilZhuravlev on 09.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomeView()
            ForEach(0 ..< 4){ index in
                ExerciseView(index: index)
            }
            Text("Exercise 2")
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(
            PageIndexViewStyle(backgroundDisplayMode: .never)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
            ContentView()
                .previewDevice("iPhone SE (2nd generation)")
        }
    }
}
