//
//  Menu.swift
//  Stockly
//
//  Created by Nayef Kanaan on 21/01/2021.
//

import SwiftUI

struct Menu: View {
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
               .padding([.bottom], 540)
               .padding([.trailing], -470)
        
            
        
                Image("undraw_account_490v")
                   .padding([.trailing], 43)
                    .padding([.bottom], 150)
            
                
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 300, height: 50, alignment: .center)
                    .padding([.top], 250)
                    .foregroundColor(.init(red: 0.435, green: 0.264, blue: 0.954))
                    .shadow(color: .black, radius: 20, x: 10, y: 10)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 300, height: 50, alignment: .center)
                .padding([.top], 450)
                .foregroundColor(.init(red: 0.435, green: 0.264, blue: 0.954))
                .shadow(color: .black, radius: 20, x: 10, y: 10)
                
                

               
        }
           
                
            
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
