//
//  TropheyView.swift
//  AwardsCollectionApp
//
//  Created by Denis Kitaev on 27.06.2023.
//

import SwiftUI

struct TropheyView: View {
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = geometry.size.height
                let minimumSize = min(width, height)
                let nearLine = minimumSize * 0.1
                let farLine = minimumSize - nearLine
                let middle = minimumSize / 2
                
                Path { path in
                    path.move(to: CGPoint(x: farLine, y: farLine))
                    path.addLine(to: CGPoint(x: nearLine, y: farLine))
                    path.addLine(to: CGPoint(x: middle - 30, y: middle))
                    path.addLine(to: CGPoint(x: middle, y: middle + 20))
                    path.addLine(to: CGPoint(x: middle + 25, y: middle - 25 ))
                    path.addLine(to: CGPoint(x: middle + 50, y: middle - 50))
                    path.addLine(to: CGPoint(x: farLine, y: nearLine + 70))
                    path.closeSubpath()
                }
                .foregroundColor(.gray)
                Path { path in
                    path.move(to: CGPoint(x: farLine, y: nearLine + 70))
                    path.addLine(to: CGPoint(x: farLine - 15, y: middle + 10))
                    path.addLine(to: CGPoint(x: middle + 40, y: middle - 10))
                    path.addLine(to: CGPoint(x: middle + 6, y: middle + 10))
                    path.addLine(to: CGPoint(x: middle + 25, y: middle - 26))
                    path.addLine(to: CGPoint(x: middle + 50, y: middle - 50))
                    path.addLine(to: CGPoint(x: farLine, y: nearLine + 70))
                }
                .foregroundColor(.white)
                Image(systemName: "cloud.fill")
                    .scaleEffect(2)
                    .offset(x: farLine - 40, y: nearLine)
                    .foregroundColor(.white)
                Image(systemName: "sun.min.fill")
                    .scaleEffect(2)
                    .offset(x: nearLine + 20, y: nearLine)
                    .foregroundColor(.yellow)
                Image(systemName: "figure.mind.and.body")
                    .scaleEffect(3)
                    .offset(x: middle - 20, y: middle - 40)
                
            }
            .background(Color(red: 0.1, green: 0.6, blue: 1))
        }
        
    }
}


struct TropheyView_Previews: PreviewProvider {
    static var previews: some View {
        TropheyView()
            .frame(width: 200, height: 200)
    }
}
