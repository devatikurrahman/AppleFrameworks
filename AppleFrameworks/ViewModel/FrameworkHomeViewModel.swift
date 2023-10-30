//
//  FrameworkHomeViewModel.swift
//  AppleFrameworks
//
//  Created by Atikur Rahman on 10/30/23.
//

import Foundation
import SwiftUI

final class FrameworkHomeViewModel: ObservableObject {

    /*var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
    */
    
    let columns: [GridItem] = [GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible())]
}
