//
//  ContentView.swift
//  SpikeImage
//
//  Created by Kishan Singh on 04/12/24.
//

import SwiftUI
import CoreData

struct ContentView: View  {
  let images: [String] // Array of image names/URLs
  let degree: [Double] = [-10,-4]
  
  var body: some View {
    HStack {
      VStack(alignment: .leading, spacing: 16) {
        // Title
        Text("Want to know more?")
          .font(.title2)
          .fontWeight(.bold)
          .foregroundColor(.black)
        
        // Subtitle
        Text("Receive the complete Stone Grove information kit.")
          .font(.body)
          .foregroundColor(.gray)
      }
      .padding()
      
      ZStack {
        
        RoundedRectangle(cornerRadius: 4.0)
          .fill(.white)
          .shadow(color: .black.opacity(0.16), radius: 4)
          .rotationEffect(.degrees(-10))
          .frame(width: 128, height: 88)
          .offset(CGSize(width: 0, height: 0))
        
        Image(images[0])
          .resizable()
          .cornerRadius(4.0)
          .rotationEffect(.degrees(-10))
          .frame(width: 120, height: 80)
          .offset(CGSize(width: 0, height: 0))
        
        RoundedRectangle(cornerRadius: 4.0)
          .fill(.white)
          .shadow(color: .black.opacity(0.16), radius: 4)
          .rotationEffect(.degrees(-4))
          .frame(width: 128, height: 88)
          .offset(CGSize(width: 12, height: 20))
          
        Image(images[1])
          .resizable()
          .cornerRadius(4.0)
          .rotationEffect(.degrees(-4))
          .frame(width: 120, height: 80)
          .offset(CGSize(width: 12, height: 20))
      }
      .frame(height: 100)
      .padding(.trailing, 32)
    }
  }
}

// Safe array access to handle out-of-bound cases gracefully
extension Array {
    subscript(safe index: Int) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

#Preview {
  ContentView(images: ["home1","home2"])
}
