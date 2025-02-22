//
//  ButtonComponent.swift
//  taskapp
//
//  Created by Fidel Villanueva Delgado on 21/02/25.
//

import SwiftUI

struct ButtonComponent: View {
    var body: some View {
        Button("Hola"){
            print("Hola")
        }
        Button(
            action: { print("Hola")},
            label: {
                Text("Hola")
                    .frame(width: 100)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(5)
            }
        )
    }
}

struct CounterView: View {
   
    @State var suscribersNumber = 0
    var body: some View {
        Button(
            action: { suscribersNumber += 1},
            label: {
                Text("Suscriptions: \(suscribersNumber)")
                    .bold()
                    .font(.title)
                    .frame(width: 100)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(5)
            }
        )
    }
}

#Preview {
    CounterView()
}
