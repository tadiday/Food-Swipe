//
//  WelcomeView.swift
//  Food Swipe
//
//  Created by Phat Cao on 4/17/25.
//

import SwiftUI


enum WelcomeDestination: Hashable {
    case login
    case register
}

struct WelcomeView: View {

    @State private var selectedDestination: WelcomeDestination?
    
    var body: some View {
        NavigationStack {
            VStack {
               
 
                    
                    VStack{
                        Spacer()
                        Text("Food Swipe")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom, 8)
                        Spacer()
                    }
                    .background(
                           Image("food_bg")
                               .resizable()
                               .scaledToFill()
                               .edgesIgnoringSafeArea(.all)
                               .blur(radius: 1.5)
                       )
                    .padding(.bottom, 10)
                


                

                
                HStack(spacing: 16) {
                    NavigationLink(value: WelcomeDestination.login) {
                        Text("LOG IN")
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 8).fill(Color.white)
                            )
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                    }

                    NavigationLink(value: WelcomeDestination.register) {
                        Text("REGISTER")
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 40)
            }
            .background(Color.white)
            .ignoresSafeArea()
            .navigationDestination(for: WelcomeDestination.self) { destination in
                switch destination {
                case .login:
                    LoginView()
                case .register:
                    RegisterView()
                }
            }
//            .navigationTitle("")
//            .navigationBarHidden(true)
            
        }
    }
}

#Preview {
    WelcomeView()
}
