//
//  InterviewGenerateQuestionsView.swift
//  career-app
//
//  Created by Amaryllis Rosemaria Baldrez Calefi on 25/08/24.
//

import SwiftUI
import UniformTypeIdentifiers

struct InterviewGenerateQuestionsView: View {
    @State private var selectedJobTitle: String = "Select Job Title"
    @State private var selectedSeniority: String = "Select Seniority"
    @State private var jobDescription: String = ""
    @State private var importing = false
    @State private var resumeFileURL: URL?

    let jobTitles = [
        "Full Stack Developer",
        "Backend Developer",
        "Frontend Developer",
        "Gaming Engineer",
        "Blockchain Engineer",
        "iOS Developer",
        "Android Developer",
        "Cross Platform (Mobile)"
    ]
    
    let seniorityLevels = [
        "Intern",
        "Junior",
        "Mid-level",
        "Senior",
        "Lead",
        "Manager"
    ]

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("1")
                .font(.largeTitle)
                .foregroundColor(.green)
            Text("Upload Your Resume")
                .font(.headline)
            
            Button(action: {
                importing = true
            }) {
                HStack {
                    Image(systemName: "doc.fill")
                    Text("Upload Resume")
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding(.vertical)
            .fileImporter(
                isPresented: $importing,
                allowedContentTypes: [.pdf, .plainText],
                allowsMultipleSelection: false
            ) { result in
                switch result {
                case .success(let selectedFile):
                    resumeFileURL = selectedFile.first
                    if let fileURL = resumeFileURL {
                        print("Selected file: \(fileURL.absoluteString)")
                    }
                case .failure(let error):
                    print("File selection failed: \(error.localizedDescription)")
                }
            }
            
            Text("2")
                .font(.largeTitle)
                .foregroundColor(.green)
            Text("Add Job Description")
                .font(.headline)
            Text("Add a job description by Generate a sample of job description or Copy-paste a job description")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            HStack {
                Menu {
                    ForEach(jobTitles, id: \.self) { title in
                        Button(action: {
                            selectedJobTitle = title
                        }) {
                            Text(title)
                        }
                    }
                } label: {
                    HStack {
                        Text(selectedJobTitle)
                        Spacer()
                        Image(systemName: "chevron.down")
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                }
                
                Menu {
                    ForEach(seniorityLevels, id: \.self) { level in
                        Button(action: {
                            selectedSeniority = level
                        }) {
                            Text(level)
                        }
                    }
                } label: {
                    HStack {
                        Text(selectedSeniority)
                        Spacer()
                        Image(systemName: "chevron.down")
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                }
            }
            
            TextEditor(text: $jobDescription)
                .frame(height: 100)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
            
            Spacer()
        }
        .padding()
    }
}
