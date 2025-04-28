//
//  FoodCard.swift
//  Food Swipe
//
//  Created by Phat Cao on 4/27/25.
//
import SwiftUI

struct FoodCard: View {
    var restaurantName: String
    var restaurantImage: String // image name for now, later can be URL
    var rating: Double
    var priceLevel: String // like "$$" or "$$$"
    var distance: String // like "2.5 mi"
    
    var body: some View {
        VStack(spacing: 20){
            Text("Crave")
                .font(.largeTitle)
                .bold()
                
            GeometryReader { geometry in
                ZStack(alignment: .bottomLeading) {
                    // Background Image
                    
                    Image("food_bg")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width * 1) // 90% of the screen width
                        .frame(height: geometry.size.height * 0.9) // 70% of the screen height
                        .clipped()
                        .cornerRadius(20)
                        .shadow(radius: 10)
                    
                    
                    // Info Text
                    VStack(alignment: .leading, spacing: 8) {
                        Text(restaurantName)
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                            .lineLimit(2) // Only allow one line, truncate if it's too long
                            .truncationMode(.tail)
                    
                        
                        HStack(spacing: 10) {
                            Text("⭐️ \(String(format: "%.1f", rating))")
                            Text(priceLevel)
                            Text(distance)
                        }
                        .foregroundColor(.white)
                        .font(.subheadline)
                    }
                    .padding()
                    .background(Color.black.opacity(0.8))
                    .cornerRadius(20)
                    .padding(16)
                }
            }
        }
        .padding(.horizontal, 10)
    }
}

#Preview {
    FoodCard(
        restaurantName: "Sushi Heaven",
        restaurantImage: "exampleImage",
        rating: 4.7,
        priceLevel: "$$",
        distance: "1.2 mi"
    )
}


