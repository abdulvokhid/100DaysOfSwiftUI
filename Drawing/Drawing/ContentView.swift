//
//  ContentView.swift
//  Drawing
//
//  Created by Abdulvokhid Azimov on 27.04.2023.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        return path
    }
}

struct Arc: Shape {
    let startAngel: Angle
    let endAngle: Angle
    let clockwise: Bool
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: startAngel, endAngle: endAngle, clockwise: clockwise)
        
        return path
    }
}
struct ContentView: View {
    var body: some View {
        Arc(startAngel: .degrees(0), endAngle: .degrees(110), clockwise: true)
            .stroke(.blue, lineWidth: 10)
            .frame(width: 300, height: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
