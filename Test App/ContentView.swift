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
                    locationInfo
            }
            .scrollIndicators(.hidden)
        }
    }
}

var locationInfo: some View {
    @State var isFavorite: Bool = false
    
    return HStack {
        ForEach(beaches.indices, id: \.self) { index in
                ZStack {
                    Image(beaches[index].image)
                        .resizable()
                        .shadow(radius: 5, x: 5, y: 5)
                    HStack {
                        VStack {
                            Text(beaches[index].name)
                                .font(.headline.bold())
                            Text(beaches[index].location)
                                .font(.subheadline)
                        }
                        .padding()
                        Spacer()
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
                            .padding()
                    }
                    .background(Color.gray.opacity(0.2))
                    .position(x: 150, y: 35)
                }
                .frame(width: 300, height: 300)
                .padding()

        }
    }
    .foregroundStyle(.white)
}

class Beach {
    var name: String
    var location: String
    var image: String
    
    init(name: String, location: String, image: String) {
        self.name = name
        self.location = location
        self.image = image
    }
}

var laguna: Beach = Beach(name: "Laguna", location: "Laguna Beach, CA", image: "laguna")

var newport: Beach = Beach(name: "Newport", location: "Newport Beach, CA", image: "newport")

var santaMonica: Beach = Beach(name: "Santa Monica", location: "Santa Monica, CA", image: "santaMonica")

var laJolla: Beach = Beach(name: "La Jolla", location: "La Jolla, CA", image: "laJolla")

var beaches = [laguna,newport, santaMonica, laJolla]

#Preview {
    ContentView()
}
