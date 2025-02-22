//
//  TextComponent.swift
//  taskapp
//
//  Created by Fidel Villanueva Delgado on 20/02/25.
//

import SwiftUI

struct TextComponent: View {
    var body: some View {
        VStack{
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.headline)
            Text("Custom")
                .font(.system(size: 20, weight: .bold, design: .default))
                .italic().bold()
                .underline()
                .foregroundColor(.red)
                .background(.white)
            Text("Fidel Villanueva Delgado")
                .frame(width: 50)
                .lineLimit(2)
                .lineSpacing(10)
        }
    }
}

#Preview {
    TextComponent()
}
