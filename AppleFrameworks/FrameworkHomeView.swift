//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by Atikur Rahman on 10/29/23.
//

import SwiftUI

struct FrameworkHomeView: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible())]
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(MockData.frameworks, id: \.self) { framework in
                FrameworkCellView(name: framework.name, imageName: framework.imageName)
            }
        }
    }
}

#Preview {
    FrameworkHomeView()
}

struct FrameworkCellView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack{
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
