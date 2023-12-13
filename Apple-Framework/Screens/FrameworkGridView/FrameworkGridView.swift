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
                List{
                    ForEach(MockData.frameworks, id: \.id){
                        framework in NavigationLink(
                            destination: FrameworkDetailView(
                                framework: framework,
                                isShowingDetailView: $viewModel.isShowingDetailView
                            )
                        ){
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            .navigationTitle("Apple Framework")
            .accentColor(Color(.label))
//            .sheet(isPresented: $viewModel.isShowingDetailView){
//                FrameworkDetailView(framework: viewModel.selectedFramwork!,
//                                    isShowingDetailView: $viewModel.isShowingDetailView
//                )
//            }
        }
    }
}


#Preview {
    FrameworkGridView(viewModel: FrameworkGridViewModel()
    )
}

