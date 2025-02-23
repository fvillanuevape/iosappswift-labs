//
//  IMCView.swift
//  taskapp
//
//  Created by Fidel Villanueva Delgado on 21/02/25.
//

import SwiftUI

struct IMCView: View {
    
    /*
    init(){
        UINavigationBar.appearance()
            .titleTextAttributes = [.foregroundColor: UIColor.white]
    }
     */
    @State var gender: Int = 0
    
    var body: some View {
        VStack{
            HStack {
                ToggleButtonComponent(text: "Male", imageName: "heart.fill", gender: 0, genderSelected: $gender)
                ToggleButtonComponent(text: "Female", imageName: "star.fill", gender: 1, genderSelected: $gender)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
        .toolbar {
            ToolbarItem(placement: .principal){
                Text("IMC Calculator")
                    .foregroundColor(.white)
            }
        }
        
    }
}

struct ToggleButtonComponent: View {
  
    let text: String
    let imageName: String
    let gender: Int
    
    
    @Binding var genderSelected: Int
    
    

    
    var body: some View {
        
        let color = if(gender == genderSelected){
            Color.backgroundComponentSelected
        }else{
            Color.backgroundComponent
        }
        
        Button(action: {
            genderSelected = gender
        })
        {
            VStack{
                ImageComponentApp(imageName: imageName)
                InformationComponent(textInformation: text)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(color)
        }
    }
}

struct ImageComponentApp: View {
    
    let imageName: String
    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .scaledToFit()
            .frame(height:100)
            .foregroundColor(.white)
    }
}

struct InformationComponent: View {
    
    let textInformation: String
    var body: some View {
        Text(textInformation)
            .font(.largeTitle)
            .bold()
            .foregroundColor(.white)
    }
}





#Preview {
    IMCView()
    //ToggleButtonComponent(text: "Aris", imageName: "heart.fill", index: 0)
}
