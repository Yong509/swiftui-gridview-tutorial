//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by Yong on 5/12/2566 BE.
//

import Foundation
import SwiftUI

struct FrameworkGridView: View{
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),
                              ]
    
    var body: some View{
        NavigationView{
            ScrollView{
                LazyVGrid(
                    columns: columns
                ){
                    ForEach(MockData.frameworks, id: \.id){
                        framework in FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("Apple Framework")
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider{
    static var previews: some View{
        FrameworkGridView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

struct FrameworkTitleView: View{
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }.padding()
    }
}
