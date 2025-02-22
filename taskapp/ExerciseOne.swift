//
//  ContentView.swift
//  taskapp
//
//  Created by Fidel Villanueva Delgado on 14/02/25.
//

import SwiftUI

struct ExerciseOne: View {
    var body: some View {
        
        VStack {
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                Rectangle()
                    .foregroundColor(.orange)
                Rectangle()
                    .foregroundColor(.yellow)
                
            }
            HStack {
                Rectangle()
                    .foregroundStyle(.orange)
            }
            HStack {
                Circle()
                    .foregroundColor(.green)
                Rectangle()
                    .frame(width: 100, height: 250)
                Circle()
                    
            }
            HStack {
                Rectangle()
                    .foregroundColor(.orange)
            }
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                Rectangle()
                    .foregroundColor(.orange)
                Rectangle()
                    .foregroundColor(.yellow)
            }
        }
        .background(Color.red)
        .padding()
    }
}

#Preview {
    ExerciseOne()
}
