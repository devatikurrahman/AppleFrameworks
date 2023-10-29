//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Atikur Rahman on 10/30/23.
//

import SwiftUI

struct AFButton: View {
    var title: String
    
    var body: some View {
        Text("Learn More")
            .frame(width: 250, height: 50)
            .font(.title2)
            .fontWeight(.semibold)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10.0)
    }
}

#Preview {
    AFButton(title: "Framework Button")
}
