//
//  DissmissButton.swift
//  Apple-Framework
//
//  Created by Yong on 13/12/2566 BE.
//

import SwiftUI

struct DissmissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
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
    }
}

#Preview {
    DissmissButton(isShowingDetailView: .constant(false))
}
