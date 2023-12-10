//
//  FrameworkGridViewModel.swift
//  Apple-Framework
//
//  Created by Riza Radia Rivaldo on 08/12/23.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
}
