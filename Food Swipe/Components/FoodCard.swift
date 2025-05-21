//
//  FoodCard.swift
//  Food Swipe
//
//  Created by Phat Cao on 4/27/25.
//
import SwiftUI

struct Restaurant {
    var name: String
    var image: String
    var rating: Double
    var priceLevel: String
    var distance: String
}

struct FoodCard: View {
    var restaurant: Restaurant

    var body: some View {
        VStack(spacing: 20) {
            Text("Crave")
                .font(.largeTitle)
                .bold()

            GeometryReader { geometry in
                ZStack(alignment: .bottomLeading) {
                    // Background Image
                    Image(restaurant.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width)
                        .frame(height: geometry.size.height * 0.9)
                        .clipped()
                        .cornerRadius(20)
                        .shadow(radius: 10)

                    // Info Text
                    VStack(alignment: .leading, spacing: 8) {
                        Text(restaurant.name)
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                            .lineLimit(2)
                            .truncationMode(.tail)

                        HStack(spacing: 10) {
                            Text("⭐️ \(String(format: "%.1f", restaurant.rating))")
                            Text(restaurant.priceLevel)
                            Text(restaurant.distance)
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
    FoodCard(restaurant: Restaurant(name: "Sushi Heaven", image: "food_bg", rating: 4.7, priceLevel: "$$", distance: "1.2 mi"))

}


