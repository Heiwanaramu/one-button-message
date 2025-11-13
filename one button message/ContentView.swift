//
//  ContentView.swift
//  one button message
//
//  Created by Muraliraman on 13/11/25.
//

import SwiftUI

struct ContentView: View {
    @State var message = ""
    @State var imageLoad = ""
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: imageLoad )
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
            Spacer()
            Button("press me"){
                if message == ""{
                    message = "You Are Awesome"
                    imageLoad = "sun.max.fill"
                }else if message == "You Are Awesome"{
                    message = "You Are Great"
                    imageLoad = "hand.thumbsup"
                }else if message == "You Are Great"{
                    message = "You Are Awesome"
                    imageLoad = "sun.max.fill"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.orange)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
