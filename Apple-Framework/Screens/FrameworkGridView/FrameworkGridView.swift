//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by Riza Radia Rivaldo on 07/12/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Framework")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}
