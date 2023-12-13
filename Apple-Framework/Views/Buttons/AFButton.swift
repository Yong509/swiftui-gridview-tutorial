//
//  AFButton.swift
//  Apple-Framework
//
//  Created by Yong on 10/12/2566 BE.
//

import SwiftUI

struct AFButton: View {
    var title:String
    var body: some View {
        Text(title)
            .frame(width: 280,height: 60)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .fontWeight(.semibold)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Learn more")
}
