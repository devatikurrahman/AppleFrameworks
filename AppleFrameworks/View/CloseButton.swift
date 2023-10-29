//
//  CloseButton.swift
//  AppleFrameworks
//
//  Created by Atikur Rahman on 10/30/23.
//

import SwiftUI

struct CloseButton: View {
    @Binding var isShowingView: Bool
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowingView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 45, height: 45)
            }
        }
        .padding()
    }
}

#Preview {
    CloseButton(isShowingView: .constant(false))
}
