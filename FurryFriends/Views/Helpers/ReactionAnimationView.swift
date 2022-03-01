//
//  ReactionAnimationView.swift
//  FurryFriends
//
//  Created by Leo Lu on 2022-03-01.
//

import SwiftUI

struct ReactionAnimationView: View {
    let ifFavourite: Bool
    let currentScore: Int
    
    var body: some View {
        VStack {
            LottieView(animationNamed: "51926-happy")
                .opacity(ifFavourite == true ? 1.0 : 0.0)
                .padding()
            LottieView(animationNamed: "2497-trophy")
                .opacity(currentScore == 100 ? 1.0 : 0.0)
        }

    }
}

struct ReactionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ReactionAnimationView(ifFavourite: false, currentScore: 0)
    }
}
