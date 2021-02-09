//
//  StocklyApp.swift
//  Stockly
//
//  Created by Nayef Kanaan on 20/01/2021.
//

import SwiftUI
import Firebase
@main
struct StocklyApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @State var alertMessage = "Wrong inputs"
    @State var showAlert = false
    @State var isLoading = false
    @State var isFocused = false
    @State var isSuccessful = false
    @State private var email = ""
    @State private var password = ""

    var body: some Scene {
        WindowGroup {
          ContentView()
            
            
            
        }
    }
}

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    @State var alertMessage = "Wrong inputs"
    @State var showAlert = false
    @State var isLoading = false
    @State var isFocused = false
    @State var isSuccessful = false
    @State private var email = ""
    @State private var password = ""
    
    var window: UIWindow?

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
        [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()
    return true
  }
    
    func login() {
        self.isLoading = true

        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
             self.isLoading = false

                 if error != nil {
                 self.alertMessage = error?.localizedDescription ?? ""
                 self.showAlert = true
             } else {
                 self.isSuccessful = true

                         DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                                self.isSuccessful = false
                         }
             }
          }
    }
}


struct StocklyApp_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
