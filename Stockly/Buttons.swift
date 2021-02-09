//
//  Buttons.swift
//  Stockly
//
//  Created by Nayef Kanaan on 22/01/2021.
//

import SwiftUI

struct ButtonStyle1: View {
    

    
    var body: some View {
        ZStack{
            
        RoundedRectangle(cornerRadius: 25.0)
            .frame(width: 200, height: 50, alignment: .center)
            .foregroundColor(Color("Color"))
        
            .shadow(color: .gray, radius: 30, x: 4, y: 7)
            
        Text("Log-in")
            .bold()
            .font(.body)
            .foregroundColor(.white)
            
            
        
    }
    }
}

struct SignUpBut: View{
    var body: some View{
        VStack{
            Text("Sign-Up")
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .frame(width: 300, height: 60)
                .background(
                    ZStack{
                 Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1.0))
                        
                        RoundedRectangle(cornerRadius:15)
                            .foregroundColor(.white)
                            .blur(radius: 4)
                            .offset(x: -8, y: -8)
                        
                        RoundedRectangle(cornerRadius:15)
                            .fill(
                                LinearGradient(gradient: Gradient(colors:[Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1.0)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            )
                            .padding(2)
                            .blur(radius: 2)
                        
                        
                    
                    }
                    
                )
                
                
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1.0)), radius: 20, x: 20, y: 20)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
        }
    }
}


struct LogInBut: View{
    var body: some View{
        VStack{
            Text("Get Started!")
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .frame(width: 300, height: 60)
                .background(
                    ZStack{
                 Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1.0))
                        
                        RoundedRectangle(cornerRadius:15)
                            .foregroundColor(.white)
                            .blur(radius: 4)
                            .offset(x: -8, y: -8)
                        
                        RoundedRectangle(cornerRadius:15)
                            .fill(
                                LinearGradient(gradient: Gradient(colors:[Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1.0)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            )
                            .padding(2)
                            .blur(radius: 2)
                        
                        
                    
                    }
                    
                )
                
                
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1.0)), radius: 20, x: 20, y: 20)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
        }
        
        
        
    }
}
struct LogInButt: View{
    var body: some View{
        VStack{
            Text("Log-In")
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .frame(width: 150, height: 60)
                .background(
                    ZStack{
                 Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1.0))
                        
                        RoundedRectangle(cornerRadius:15)
                            .foregroundColor(.white)
                            .blur(radius: 4)
                            .offset(x: -8, y: -8)
                        
                        RoundedRectangle(cornerRadius:15)
                            .fill(
                                LinearGradient(gradient: Gradient(colors:[Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1.0)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            )
                            .padding(2)
                            .blur(radius: 2)
                        
                        
                    
                    }
                    
                )
                
                
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1.0)), radius: 20, x: 20, y: 20)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
        }
        
        
        
    }
}










//#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1.0)

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyle1()
    }
}
