//
//  WelcomeView.swift
//  Food Swipe
//
//  Created by Phat Cao on 4/17/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Spacer()

            Text("Food Swipe")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 8)

            Spacer()

            HStack(spacing: 16) {
                Button(action: {
                    // handle login
                }) {
                    Text("LOG IN")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.black, lineWidth: 2)
                        )
                }

                Button(action: {
                    // handle register
                }) {
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
        .background(Color.gray.opacity(0.1))
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
