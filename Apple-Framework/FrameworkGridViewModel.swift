//
//  FrameworkGridViewModel.swift
//  Apple-Framework
//
//  Created by Yong on 10/12/2566 BE.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    
    var selectedFramwork: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}

