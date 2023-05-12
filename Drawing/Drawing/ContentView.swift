//
//  ContentView.swift
//  Drawing
//
//  Created by Abdulvokhid Azimov on 27.04.2023.
//

import SwiftUI

struct Arc: InsettableShape {
    let startAngel: Angle
    let endAngle: Angle
    let clockwise: Bool
    var insetAmount = 0.0
    
    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngel - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment
        
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
        
        return path
    }
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
}
struct ContentView: View {
    var body: some View {
        Arc(startAngel: .degrees(-90), endAngle: .degrees(90), clockwise: true).strokeBorder(.blue, lineWidth: 40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
