//
//  RegisterView.swift
//  Food Swipe
//
//  Created by Phat Cao on 4/17/25.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var isPasswordVisible = false
    @State private var agreeTerm = false
    
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
            Text("Create account")
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            // Username
            VStack{
                HStack {
                    Text("Username")
                        .foregroundColor(Color.black)
                        .font(.system(size: 15))
                    Spacer()
                }
                
                HStack {
                    TextField("Your username", text: $username)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .tint(.black)
                    if !username.isEmpty {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.black)
                    }
                }
                .padding()
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.systemGray4)))
            }
            
            // Email Field
            VStack{
                HStack {
                    Text("Email address")
                        .foregroundColor(Color.black)
                        .font(.system(size: 15))
                    Spacer()
                }
                
                HStack {
                    TextField("Your email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .tint(.black)
                    if !email.isEmpty {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.black)
                    }
                }
                .padding()
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
                            TextField("Your password", text: $password)
                            
                        } else {
                            SecureField("Your password", text: $password)
                        }
                    }
                    .tint(.black)
                    
                    Button(action: { isPasswordVisible.toggle() }) {
                        Image(systemName: isPasswordVisible ? "eye" : "eye.slash")
                            .foregroundColor(.black)
                    }
                }
                .padding()
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.systemGray4)))
            }


            // Agreement terms
            HStack {
                Button(action: { agreeTerm.toggle() }) {
                    Image(systemName: agreeTerm ? "checkmark.circle.fill" : "circle")
                        .foregroundColor(.black)
                }
                Text("I accept the ")
                .foregroundColor(Color.black)
                .font(.system(size: 15))
                +
                Text("terms ") // Todo: pop up terms
                .foregroundColor(Color.black)
                .font(.system(size: 15))
                +
                Text("and ")
                .foregroundColor(Color.black)
                .font(.system(size: 15))
                +
                Text("privacy policy") // Todo: pop up privacy
                .foregroundColor(Color.black)
                .font(.system(size: 15))

                Spacer()
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
            
            
            Spacer()
            Spacer()
            
            // Register
            HStack {
                Text("Already have an account?")
                    .font(.system(size: 15))
                Button(action: {
                    // Navigate to login
                }){
                    Text("Log in")
                        .underline(true, color: .black)
                        .font(.system(size: 15))
                        .foregroundColor(.black)
                        .bold()
                }
            }
            .font(.footnote)
            
        }
        .padding()
    }
    
    
}

#Preview {
    RegisterView()
}
