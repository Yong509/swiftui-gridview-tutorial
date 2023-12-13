//
//  FrameworkDetailView.swift
//  Apple-Framework
//
//  Created by Yong on 10/12/2566 BE.
//

import Foundation
import SwiftUI

struct FrameworkDetailView: View{
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View{
        VStack{
            DissmissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            }label: {
                AFButton(title: "Learn more")
            }
        }.fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ??         URL(string:"https://www.apple.com/th/")!)
        })
    }
}
