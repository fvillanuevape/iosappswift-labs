//
//  TextFieldComponent.swift
//  taskapp
//
//  Created by Fidel Villanueva Delgado on 21/02/25.
//

import SwiftUI

struct TextFieldComponent: View {
    
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        VStack {
            TextField("Input Your Mail", text: $email)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.3))
                .cornerRadius(8)
                .padding(.horizontal, 32)
                .onChange(of: email) { newValue in
                    print("The new value is \(newValue)")
                }
            
            SecureField("Input Your Password", text: $password)
                .keyboardType(.default)
                .padding(16)
                .background(.gray.opacity(0.3))
                .cornerRadius(8)
                .padding(.horizontal, 32)
                .onChange(of: email) { newValue in
                    print("The new value is \(newValue)")
                }
            
            Button(
                action: {},
                label: {
                    Text("Login")
                        .bold()
                        .padding(16)
                        .background(.gray.opacity(0.3))
                        .cornerRadius(8)
                        .foregroundColor(.blue)
                }
            )
        }
    }
}

#Preview {
    TextFieldComponent()
}
