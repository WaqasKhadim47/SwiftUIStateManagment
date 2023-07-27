//
//  BindingDemo.swift
//  SwiftUIStateManagment
//
//  Created by Waqas Khadim on 25/07/2023.
//

import SwiftUI

struct BindingDemo: View {
    @State private var isOn : Bool = false
    var body: some View {
        VStack{
            Text("State Demo Practice").foregroundColor(isOn ? .red : .black)
            ToggleChildView(isOn: $isOn)
        }.padding()
    }
}

struct BindingDemo_Previews: PreviewProvider {
    static var previews: some View {
        BindingDemo()
    }
}
