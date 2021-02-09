//
//  Onboarding.swift
//  Stockly
//
//  Created by Nayef Kanaan on 21/01/2021.
//

import SwiftUI
import ConcentricOnboarding

var nextView = false

struct Onboarding: View {
    var body: some View {
        ConcentricOnboardingView(
            pages: [AnyView(Page()),
                    AnyView(Page1()),
                    AnyView(Page2()),
                    AnyView(Page3())],
            bgColors: [.init(red: 0.435, green: 0.264, blue: 0.954),.init(red: 0.976, green: 0.973, blue: 0.984), .init(red: 0.899, green: 0.420, blue: 0.389),.init(red: 0.976, green: 0.973, blue: 0.984)],
                    duration: 1.5
        )
    }
}

struct Page: View{
    var body: some View {
    VStack {
        Spacer()
        Spacer()
        
        Text("Have a Head Start")
            .font(.largeTitle)
            .foregroundColor(.white)
            .bold()
            .padding()

        Image("Head_start-removebg-preview")
            .resizable()
            .frame(width: 300, height: 300, alignment: .center)
       
        Text("Stockly is your consultant, with tips on when to buy, sell, or hold on to your investments!")
            .bold()
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
            .padding()
            .font(.body)
        
        Spacer()
        Spacer()
        
            }
        }
        
    }


struct Page1: View{
    var body: some View {
        VStack {
            Spacer()
            Spacer()
        
            
            Text("Manage your investment portfolio on the go!")
                .font(.title)
                .foregroundColor(.init(red: 0.435, green: 0.264, blue: 0.954))
                .bold()
                .padding(.leading)
                .multilineTextAlignment(.center)

            Image("Tips-removebg-preview")
                .resizable()
                .aspectRatio(contentMode: .fit)
           
            Text("Get notified with changes on your investment portfolio in real time.")
                .bold()
                .foregroundColor(.init(red: 0.139, green: 0.148, blue: 0.148))
                .multilineTextAlignment(.center)
                .padding()
                .font(.body)
             
            
            Spacer()
            Spacer()
        
        
        }
    }

}



struct Page2: View {
    var body: some View {
        VStack {
          
            Spacer()
            Spacer()
            
            Text("Plan your next moves.")
                .font(.largeTitle)
                .foregroundColor(.white)
                .bold()
                .multilineTextAlignment(.center)
            
            Image("Plan-removebg")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
           
            Text("Get daily news and info from the most reliable sources and news outlets.")
                .bold()
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding()
                .font(.body)
            
            Spacer()
            Spacer()
            
                }
    }
}


struct Page3: View {
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            RoundedRectangle(cornerRadius: 5)
            
            Text("Always stay updated.")
                .font(.title)
                .foregroundColor(.init(red: 0.435, green: 0.264, blue: 0.954))
                .bold()
                .multilineTextAlignment(.center)

            Image("Portfolio-removebg-preview-2")
                .resizable()
                .frame(width: 400, height: 300, alignment: .center)
            
           
           
            Text("Get updates on your investments with Stockly, Always keep up with live changes.")
                .bold()
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .font(.body)
                .padding()
            
            Spacer()
            Spacer()
        
        
        }
    }
}


//white = 0.976,0.973,0.984
//Purp = 0.435,0.264,0.954
//red = 0.899,0.420,0.389
//black = 32,34,34




struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
