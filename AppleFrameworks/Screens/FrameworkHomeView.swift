//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by Atikur Rahman on 10/29/23.
//

import SwiftUI

struct FrameworkHomeView: View {
    @StateObject var viewModel = FrameworkHomeViewModel()

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        NavigationLink(value: framework) {
                            FrameworkCellView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkHomeView()
}
