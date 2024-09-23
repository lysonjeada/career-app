//
//  ContentView.swift
//  career-app
//
//  Created by Amaryllis Rosemaria Baldrez Calefi on 12/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            BlogView()
                .tabItem {
                    Label("Blog", systemImage: "doc.text")
                }
            
            InterviewGenerateQuestionsView()
                .tabItem {
                    Label("Interviews", systemImage: "mic.fill")
                }
            
            ResumeView()
                .tabItem {
                    Label("Resume", systemImage: "book.fill")
                }
            
            MenuView()
                .tabItem {
                    Label("Menu", systemImage: "line.horizontal.3")
                }
        }
    }
}

struct CurriculumView: View {
    var body: some View {
        Text("Curriculum View")
            .font(.largeTitle)
            .navigationTitle("Curriculum")
    }
}

struct MenuView: View {
    var body: some View {
        Text("Menu View")
            .font(.largeTitle)
            .navigationTitle("Menu")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



