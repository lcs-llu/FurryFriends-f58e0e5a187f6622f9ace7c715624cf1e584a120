//
//  ReactionAnimationView.swift
//  FurryFriends
//
//  Created by Leo Lu on 2022-03-01.
//

import SwiftUI

struct ReactionAnimationView: View {
    let reactionName: String
    let ifFavourite: Bool
    
    var body: some View {
        LottieView(animationNamed: reactionName)
            .opacity(ifFavourite == true ? 1.0 : 0.0)
            .padding()

    }
}

struct ReactionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ReactionAnimationView(reactionName: "51926-happy", ifFavourite: false)
    }
}
