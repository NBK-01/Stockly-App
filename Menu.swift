//
//  Menu.swift
//  Stockly
//
//  Created by Nayef Kanaan on 22/01/2021.
//

import SwiftUI

struct Menu: View {
    
    @State private var switchView1 = false
    
    
    var body: some View {
         
        
        
        ZStack{
            
            
            
            
          Image("A3")
            .padding([.bottom], 800)
            .padding([.trailing], 200)
                
                
            Image("A4")
             .padding([.top], 450.0)
             .padding([.trailing], 200)
            
         Image("A4 Copy")
              .padding([.top], 660)
                .padding([.trailing], -300)
            
           Image("A4 Copy 2")
               .padding([.bottom], 500)
               .padding([.trailing], -470)
            
            Image("Icon 3x")
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(150)
                .padding([.bottom], 200)
               
            
            
            Button(action: {self.switchView1.toggle()} , label: {
                ButtonStyle1()
                    .foregroundColor(.black)
                    .position(x: 470, y: 970)
                    
            })
            
            .sheet(isPresented: $switchView1, content: {
                LogIn()
            })
            
        }
       
        
       
        //.frame(maxWidth: .infinity, maxHeight: .infinity)
       // .background(Color.init(red: 0.976, green: 0.973, blue: 0.984))
                
            
        //white = 0.976,0.973,0.984
        //Purp = 0.435,0.264,0.954
        //red = 0.899,0.420,0.389
        //black = 32,34,34
                

        }
    }

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
