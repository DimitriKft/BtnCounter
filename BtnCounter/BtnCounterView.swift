//
//  BtnCounterView.swift
//  Demo
//
//  Created by dimitri on 21/10/2024.
//

import SwiftUI


struct BtnCounterView: View {

    @State private var counter: Int = 0
    var body: some View {
        ZStack {
            Color.brown.edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Text("Compteur : \(counter)")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .fontWidth(.expanded)
                    .foregroundStyle(.white)
                    .padding()
                HStack {
                    Button(action: {
                        counter += 1
                    }) {
                        Text("Incrémenter")
                            .font(.title2)
                            .fontWeight(.medium)
                            .padding()
                            .background(Color.white)
                            .foregroundStyle(.black)
                            .cornerRadius(10)
                            .shadow(radius: 10, x: 0, y: 10)
                    }
                    Button(action: {
                        counter = 0
                    }) {
                        Text("Réinitialiser")
                            .font(.title2)
                            .fontWeight(.medium)
                            .padding()
                            .background(Color.red)
                            .foregroundStyle(.white)
                            .cornerRadius(10)
                            .shadow(radius: 10, x: 0, y: 10)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    BtnCounterView()
}
