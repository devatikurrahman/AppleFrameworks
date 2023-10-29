//
//  FrameworkCellView.swift
//  AppleFrameworks
//
//  Created by Atikur Rahman on 10/30/23.
//

import SwiftUI

struct FrameworkCellView: View {
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    FrameworkCellView(framework: MockData.sampleFramework)
}
