//
//  InfoView.swift
//  Business_Card_SwiftUI
//
//  Created by Zach Davis on 7/15/22.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 40, alignment: .center)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hi :)", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
