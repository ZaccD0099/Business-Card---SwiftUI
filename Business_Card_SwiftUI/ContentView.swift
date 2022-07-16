//
//  ContentView.swift
//  Business_Card_SwiftUI
//
//  Created by Zach Davis on 7/15/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("zach")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 250
                           , alignment: .bottom)
                    .clipShape(Rectangle())
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 5))

                Text("Zach Davis")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .italic()
                Divider()
                
                InfoView(text: "(512) 466-0701", imageName: "phone.fill")
                InfoView(text: "zachdavis0099@gmail.com", imageName: "envelope.fill")
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


