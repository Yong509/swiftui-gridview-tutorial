//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by Yong on 5/12/2566 BE.
//

import Foundation
import SwiftUI

struct FrameworkGridView: View{
    
    @StateObject var viewModel = FrameworkGridViewModel()
    //inittialize brand new view model, if injecting it or initialize with view model use @observeObject
    
    
    var body: some View{
        NavigationView{
            ScrollView{
                LazyVGrid(
                    columns: viewModel.columns
                ){
                    ForEach(MockData.frameworks, id: \.id){
                        framework in FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramwork = framework
                            }
                    }
                }
            }
            .navigationTitle("Apple Framework")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetailView(framework: viewModel.selectedFramwork!,
                                    isShowingDetailView: $viewModel.isShowingDetailView
                )
            }
        }
    }
}


