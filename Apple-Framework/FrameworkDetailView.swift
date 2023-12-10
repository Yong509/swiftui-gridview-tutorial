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
    
    var body: some View{
        VStack{
            
            HStack{
                Spacer()
                Button{
                    isShowingDetailView = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }.padding()
            
            Spacer()
            
            FrameworkTitleView(framework: MockData.frameworks[2])
            Text(MockData.frameworks[2].description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                
            }label: {
                AFButton(title: "Learn more")
            }
        }
    }
}
