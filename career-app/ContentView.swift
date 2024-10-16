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
                        .accessibilityLabel("Blog Section")
                        .accessibilityHint("Shows the blog articles")
<<<<<<< Updated upstream
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
=======
                    
                    InterviewGenerateQuestionsView()
                        .tabItem {
                            Label("Interviews", systemImage: "mic.fill")
                                .accessibilityLabel("Interviews Section")
                                .accessibilityHint("Generates interview questions")
                        }
                    
                    ResumeView()
                        .tabItem {
                            Label("Resume", systemImage: "book.fill")
                                .accessibilityLabel("Resume Section")
                                .accessibilityHint("Displays your resume details")
                        }
                    
                    MenuView()
                        .tabItem {
                            Label("Menu", systemImage: "line.horizontal.3")
                                .accessibilityLabel("Menu Section")
                                .accessibilityHint("Opens additional menu options")
                        }
>>>>>>> Stashed changes
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



