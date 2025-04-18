//
//  LoginView.swift
//  Food Swipe
//
//  Created by Phat Cao on 4/17/25.
//

//
//  WelcomeView.swift
//  Food Swipe
//
//  Created by Phat Cao on 4/17/25.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var isPasswordVisible = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Spacer()
            
            HStack{
                Spacer()
                Image(systemName: "sparkle")
                    .font(.system(size: 40))
                    .padding(.bottom, 10)
                
            }
            
            
            // Title
            Text("Log in")
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack{
                HStack {
                    Text("Email address")
                        .foregroundColor(Color.black)
                        .font(.system(size: 15))
                    Spacer()
                }
                
                // Email Field
                HStack {
                    TextField("Email address", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .tint(.black)
                    if !email.isEmpty {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.black)
                    }
                }
                .padding()
//                .background(Color(.systemGray6))
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.systemGray4)))
            }

            
            // Password Field
            VStack {
                HStack {
                    Text("Password")
                        .foregroundColor(Color.black)
                        .font(.system(size: 15))
                    Spacer()
                }
                
                HStack{
                    Group {
                        if isPasswordVisible {
                            TextField("Password", text: $password)
                            
                        } else {
                            SecureField("Password", text: $password)
                        }
                    }
                    .tint(.black)
                    
                    Button(action: { isPasswordVisible.toggle() }) {
                        Image(systemName: isPasswordVisible ? "eye" : "eye.slash")
                            .foregroundColor(.black)
                    }
                }
                .padding()
//                .background(Color(.systemGray6))
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.systemGray4)))
            }


            // Forgot password
            HStack {
                Spacer()
                Button("Forgot password?") {
                    // Navigate to Forgot password page
                }
                .foregroundColor(Color.black)
                .font(.system(size: 15))

            }

            
            // Login
            Button(action: {
                // handle login: TODO
            }) {
                Text("Log in")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
            
            HStack {
                    Rectangle().frame(height: 1).foregroundColor(.gray)
                    Text("Or Login with")
                        .font(.system(size: 15))
                        .font(.footnote)
                        .foregroundColor(.gray)
                    Rectangle().frame(height: 1).foregroundColor(.gray)
            }
            
            HStack(spacing: 16) {
                socialButton(imageName: "facebook_logo")
                socialButton(imageName: "google_logo")
                socialButton(imageName: "apple.logo")
            }
            
            Spacer()
            Spacer()
            
            // Register
            HStack {
                Text("Don’t have an account?")
                    .font(.system(size: 15))
                Button("Sign up") {
                    // Navigate to sign up
                }
                .bold()
                .font(.system(size: 15))
                .foregroundColor(Color.black)
            }
            .font(.footnote)
            
        }
        .padding()
    }
    
    
    // Handling the google, facebook, apple login
    func socialButton(imageName: String) -> some View {
        Button(action: {
            // Social auth
        }) {
            if imageName == "facebook_logo" || imageName == "google_logo" {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28, height: 28) // 💥 slightly larger
                    .padding(12)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color(.systemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray, lineWidth: 1)
                    )
            }
            else {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 22)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.black)
                    .padding()
                    .background()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray, lineWidth: 1)
                    )
            }
        }
    }
    
}

#Preview {
    LoginView()
}
