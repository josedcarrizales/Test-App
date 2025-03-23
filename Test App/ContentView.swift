//
//  ContentView.swift
//  Test App
//
//  Created by Jose Carrizales on 3/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("cream-bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0..<20) { _ in
                        cardStyle
                }
            }
        }
    }
}

var cardStyle: some View {
    VStack {
        ZStack {
                locationImage
                locationInfo
            }
        }
        .frame(width: 250, height: 250)
        .shadow(radius: 5, x: 5, y: 5)
        .padding()
    }
}

var locationImage: some View {
    Image("laguna")
        .resizable()
        .shadow(radius: 5, x: 5, y: 5)
}

var locationInfo: some View {
    HStack {
        VStack(alignment: .leading) {
            Text("Laguna")
                .font(.headline)
            Text("Laguna Beach, CA")
                .font(.caption)
        }
        Spacer()
        Image(systemName: "heart")
    }
    .padding()
    .background(Color.gray.opacity(0.2).gradient)
    .foregroundStyle(.white)
}

#Preview {
    ContentView()
}
