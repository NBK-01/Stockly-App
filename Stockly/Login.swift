//
//  Login.swift
//  Stockly
//
//  Created by Nayef Kanaan on 21/01/2021.
//

import SwiftUI
import Firebase


struct LogIn: View{
    
    @State private var email = ""
    @State private var password = ""
    @State var switchView2 = false
 
  
    var body: some View{

        
        ZStack{
           
        
        Text("Welcome to Stockly!")
            .bold()
            .position(x: 150, y: 90)
            .font(Font.custom("Font1", size: 30))
            .animation(.easeIn)
            
        
        Text("Log-in to get started")
            .bold()
            .animation(.easeIn)
            
            
            .position(x: 150, y: 130)
            .font(Font.custom("Font1", size: 30))
        
        
        Image("undraw_lost_online_wqob")
            .resizable()
            .frame(width: 568, height: 568, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 200.0))
            .position(x: 150, y: 730)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 15, x: 0, y: 0)
            
        
            Button(action: {print("nauefg")}, label: {
                ButtonStyle1()
            })
        
        
        HStack{
            
            
        Image("icon")
        TextField("Email..", text: $email)
            
            
            
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 500).stroke(Color.init(red: 0.899, green: 0.420, blue: 0.389, opacity: 0.8), lineWidth: 2))
        .frame(width: 300, height: 300)
        .position(x: 155, y: 210)
        .animation(.easeIn)
       
        HStack{
            
            Image("Pass")
            TextField("Password...", text: $password)
            
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 500).stroke(Color.init(red: 0.899, green: 0.420, blue: 0.389, opacity: 0.8), lineWidth: 2))
        .frame(width: 300, height: 300)
        .position(x: 155, y: 290)
        .animation(.easeIn)
           
            
        
        }
        
     }
    
    }
    



struct Login_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}
