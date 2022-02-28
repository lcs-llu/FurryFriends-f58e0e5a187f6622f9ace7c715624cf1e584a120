//
//  ContentView.swift
//  FurryFriends
//
//  Created by Russell Gordon on 2022-02-26.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    
    // Address for main image
    // Starts as a transparent pixel – until an address for an animal's image is set
    @State var currentImage = URL(string: "https://www.russellgordon.ca/lcs/miscellaneous/transparent-pixel.png")!
    
    // MARK: Computed properties
    var body: some View {
        
        VStack {
            
            // Shows the main image
            RemoteImageView(fromURL: currentImage)
            
            Image(systemName: "heart.circle")
                .font(.largeTitle)
            
            Button(action: {
                print("I was pressed")
            }, label: {
                Text("Another one!")
            })
                .buttonStyle(.bordered)

            HStack {
                Text("Favourites")
                    .bold()
                    .font(.title)
                Spacer()
            }
            
            List {
                Text("Placeholder")
            }
            
            Spacer()
        }
        // Runs once when the app is opened
        .task {
            
            // Example images for each type of pet
            let remoteDogImage = "https://images.dog.ceo/breeds/labrador/lab_young.JPG"
            
            // Replaces the transparent pixel image with an actual image of an animal
            // Adjust according to your preference ☺️
            currentImage = URL(string: remoteDogImage)!
                        
        }
        .navigationTitle("Furry Friends")
        .padding()
        
    }
    
    // MARK: Functions
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
