//
//  ContentView.swift
//  Stockly
//
//  Created by Nayef Kanaan on 20/01/2021.
//

import SwiftUI
import ConcentricOnboarding


struct ContentView: View {
    
    
    var body: some View {
        
        
        ConcentricOnboardingView(
            pages: [AnyView(OnboardingPage()),
                    AnyView(OnboardingPage1()),
                    AnyView(OnboardingPage2()),
                    AnyView(OnboardingPage3())],
            bgColors: [.init(red: 0.435, green: 0.264, blue: 0.954),.init(red: 0.976, green: 0.973, blue: 0.984), .init(red: 0.899, green: 0.420, blue: 0.389),.init(red: 0.976, green: 0.973, blue: 0.984)],
            duration: 1
        )
    
}
}

struct OnboardingPage: View{
    var body: some View {
    VStack {
    
    Spacer()
        
        Text("Have a Head Start")
            .font(.largeTitle)
            .foregroundColor(.white)
            .bold()
            .padding(.leading)
        
        

        Image("undraw_finish_line_katerina_limpitsouni_xy20")
            .resizable()
            .frame(width: 250, height: 250, alignment: .center)
        
        
       
        Text("Stockly is your consultant, with tips on when to buy, sell, or hold on to your investments!")
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
            .padding(.all, 16.0)
            .font(.body)
        
        Spacer()
        
        
            }
        }
        
    }


struct OnboardingPage1: View{
    var body: some View {
        VStack {
            
            
        
            
            Text("Manage your investment portfolio on the go!")
                .font(.title)
                .foregroundColor(.init(red: 0.435, green: 0.264, blue: 0.954))
                .bold()
                .padding(.leading)
                .multilineTextAlignment(.center)

            Image("undraw_stock_prices_afrt")
                .resizable()
                .frame(width: 250, height: 250)

            Text("Get notified with changes on your investment portfolio in real time.")
                .fontWeight(.semibold)
                .bold()
                .foregroundColor(.init(red: 0.139, green: 0.148, blue: 0.148))
                .multilineTextAlignment(.center)
                
                .font(.body)
                .padding(.all, 10)
             
            
            
            
        
        
        }
    }

}



struct OnboardingPage2: View {
    var body: some View {
        VStack {
          
        
        
            
            Text("Plan your next moves.")
                .font(.largeTitle)
                .foregroundColor(.white)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.leading)
         
            Image("undraw_Master_plan_re_jvit")
                .resizable()
                .frame(width: 300, height: 250, alignment: .center)
           
          
          
            
            Text("Plan your future investments with the help of Stockly, daily news and tips.")
                .bold()
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding([.bottom], 20)
                .font(.body)
            
            
            
            
        }
        
    }
}


struct OnboardingPage3: View {
  
    
   @State var switchView = false
   
    
    var body: some View {
        
        
        
        VStack{
        
           
            ZStack{
                
                sliderButton()
                
                    .sheet(isPresented: $switchView) {
                        LogIn()
                    }
                
            
            } .onReceive(NotificationCenter.default.publisher(for: Notification.Name("Success")), perform: { _ in
                    withAnimation{self.switchView = true}
                })
            
            
            Text("Always stay updated.")
                .font(.title)
                .foregroundColor(.init(red: 0.435, green: 0.264, blue: 0.954))
                .bold()
                .multilineTextAlignment(.center)

            Image("undraw_portfolio_feedback_exfk")
                .resizable()
                .frame(width: 400, height: 300, alignment: .center)
            
           
           
            Text("Get updates on your investments with Stockly, Always keep up with live changes.")
                .bold()
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .font(.body)
                .padding()
            
            
            
            
        
        
        }
    }
}



struct sliderButton: View{
    
    @State var maxWidth = UIScreen.main.bounds.width - 100
    @State var offset : CGFloat = 0
   
    
    var  body: some View {
        
        
       
            
            
        ZStack{
            Capsule()
                .stroke(Color("Accent"), lineWidth: 2)
                
            
            Text("SWIPE TO GET STARTED")
                
                .foregroundColor(.black)
                .padding(.leading,60)
            
            HStack{
            Capsule()
                .fill(Color("Accent"))
                .frame(width: calculateWidth() + 65)
                
                Spacer(minLength: 0)
            }
            
            HStack{
                ZStack{
                    Image (systemName: "chevron.right")
                        
                    Image(systemName: "chevron.right")
                        .offset(x: -10)
                }
                .foregroundColor(.black)
                .offset(x: 5)
                .frame(width: 65, height: 65)
                .background(Color("Accent"))
                .clipShape(Circle())
                .offset(x: offset)
                .gesture(DragGesture().onChanged(onChanged(value:)).onEnded(onEnd(value:)))
                
                Spacer()
            }
        }
        .frame(width: maxWidth, height: 65)
    }

    
    
    func calculateWidth()->CGFloat{
        let percent = offset / maxWidth
        
        return percent * maxWidth
    }
    
    func onChanged(value: DragGesture.Value){
        if value.translation.width > 0 && offset <= maxWidth - 65{
            
            offset = value.translation.width
        }
       
    }
    func onEnd(value: DragGesture.Value){
        
        withAnimation(Animation.easeOut(duration: 0.3)){
        
        if offset > 100{
            offset = maxWidth - 65
            
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.35){
                NotificationCenter.default.post(name: NSNotification.Name("Success"), object: nil)
            }
        }
            else{
                offset = 0
            }

        
        }
    }
}

        
//NavigationView{
    //NavigationLink(
       // destination: Menu(),
       // label: {
           // LogInButt()
        //})
      
//white = 0.976,0.973,0.984
//Purp = 0.435,0.264,0.954
//red = 0.899,0.420,0.389
//black = 32,34,34





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
            ContentView()

    }
}




//white = 0.976,0.973,0.984
//Purp = 0.435,0.264,0.954
//red = 0.899,0.420,0.389
//black = 32,34,34
           // VStack{
            
            //  Button(action: {self.switchView.toggle()}, label: {
             //       ButtonStyle1()
           //     })
        //
           //   .sheet(isPresented: $switchView, content: {
           //             LogIn()})
            
           
        
