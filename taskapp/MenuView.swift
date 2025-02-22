//
//  MenuView.swift
//  taskapp
//
//  Created by Fidel Villanueva Delgado on 21/02/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack {
            VStack{
                NavigationLink(destination: IMCView()){
                    Text("ICM Calculator")
                }
                Text("Register")
            }
        }
    }
}

#Preview {
    MenuView()
}
