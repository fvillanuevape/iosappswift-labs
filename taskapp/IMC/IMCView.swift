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
    @State var height: Double = 150
    @State var age: Int = 18
    @State var weight: Int = 80
    
    var body: some View {
        VStack{
            HStack {
                ToggleButtonComponent(text: "Male", imageName: "heart.fill", gender: 0, genderSelected: $gender)
                ToggleButtonComponent(text: "Female", imageName: "star.fill", gender: 1, genderSelected: $gender)
            }
            HeightCalculatorComponent(selectedHeight: $height)
            HStack{
                CounterComponent(titleCounter: "Age", numberCounter: $age)
                CounterComponent(titleCounter: "Weight", numberCounter: $weight)
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

struct TitleComponent: View {
    
    let textTitle: String
    
    var body: some View {
        Text(textTitle)
            .font(.title2)
            .foregroundColor(.gray)
    }
}

struct HeightCalculatorComponent: View {
    
    @Binding var selectedHeight: Double
    var body: some View {
        VStack{
            TitleComponent(textTitle: "Altura")
            InformationComponent(textInformation: "\(Int(selectedHeight)) cm")
            Slider(
                value: $selectedHeight,
                in: 100...200,
                step: 1
            )
            .accentColor(.purple)
            .padding(.horizontal, 16)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundComponent)
    }
}

struct CounterComponent: View {
    let titleCounter: String
    @Binding var numberCounter: Int
    
    var body: some View {
        
        VStack{
            TitleComponent(textTitle: titleCounter)
            InformationComponent(textInformation: String(numberCounter))
            HStack{
                Button(action: {
                    
                    if (numberCounter > 0){
                        numberCounter -= 1
                    }
                    
                })
                {
                    ZStack
                    {
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "minus")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                    }
                }
                Button(action: {
                    
                    if (numberCounter < 100){
                        numberCounter += 1
                    }
                    
                }){
                    ZStack
                    {
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "plus")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                    }
                }
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundComponent)
    }
}





#Preview {
    IMCView()
    //ToggleButtonComponent(text: "Aris", imageName: "heart.fill", index: 0)
}
