//
//  ImageComponent.swift
//  taskapp
//
//  Created by Fidel Villanueva Delgado on 21/02/25.
//

import SwiftUI

struct ImageComponent: View {
    var body: some View {
        Image("swift-logo")
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 90)
        Image(systemName: "square.and.arrow.up.circle.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
        
    }
}

#Preview {
    ImageComponent()
}
