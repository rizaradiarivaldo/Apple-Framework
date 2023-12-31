//
//  FrameworkDetailView.swift
//  Apple-Framework
//
//  Created by Riza Radia Rivaldo on 07/12/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!) {
                AFButton(title: "Learn More")
            }
//            Button{
//                isShowingSafariView = true
//            } label: {
//               AFButton(title: "Learn More")
//            }
        }
//        .sheet(isPresented: $isShowingSafariView){
//            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
//        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
