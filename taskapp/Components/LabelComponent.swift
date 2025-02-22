//
//  LabelComponent.swift
//  taskapp
//
//  Created by Fidel Villanueva Delgado on 21/02/25.
//

import SwiftUI

struct LabelComponent: View {
    var body: some View {
        Label("Course Swift", image: "swift-logo")
        Label(title: { Text("Course Swift")},
              icon: {
            Image("swift-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 30)
        }
        )
    }
}

#Preview {
    LabelComponent()
}
