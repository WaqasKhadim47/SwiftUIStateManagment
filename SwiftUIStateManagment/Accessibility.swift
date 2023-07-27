//
//  Accessibility.swift
//  SwiftUIStateManagment
//
//  Created by Waqas Khadim on 27/07/2023.
//

import SwiftUI

struct Accessibility: View {
    var body: some View {
        HStack{
            Text("Home")
                .applyTextStyle()
            Spacer()
            Text("Click")
        }.padding()
            .contentShape(Rectangle())
            .gesture(TapGesture().onEnded({
             print("click")
            }))
            .accessibilityElement(children: .combine)
            .accessibilityAddTraits([.isButton])
            .accessibilityLabel("Home")
            .accessibilityInputLabels(["Home"])
    }
}

struct Accessibility_Previews: PreviewProvider {
    static var previews: some View {
        Accessibility()
    }
}


