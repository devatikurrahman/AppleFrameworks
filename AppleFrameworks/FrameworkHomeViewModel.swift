//
//  FrameworkHomeViewModel.swift
//  AppleFrameworks
//
//  Created by Atikur Rahman on 10/30/23.
//

import Foundation

final class FrameworkHomeViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
