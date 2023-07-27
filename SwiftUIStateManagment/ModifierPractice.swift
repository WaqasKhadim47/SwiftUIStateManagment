//
//  ModifierPractice.swift
//  SwiftUIStateManagment
//
//  Created by Waqas Khadim on 27/07/2023.
//

import SwiftUI

struct ModifierPractice: View {
    var body: some View {
        VStack(alignment: .center){
            Text("Hello World!")
                .applyTextStyle()
            Button("Click Here") {
                print("click")
            }
            .applyButtonStyle()
        }
    }
}

struct ModifierPractice_Previews: PreviewProvider {
    static var previews: some View {
        ModifierPractice()
    }
}
