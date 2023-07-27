//
//  StateDemo.swift
//  SwiftUIStateManagment
//
//  Created by Waqas Khadim on 25/07/2023.
//

import SwiftUI

struct StateDemo: View {
    @State private var isOn : Bool = false
    var body: some View {
        VStack{
            Text("State Demo Practice").foregroundColor(isOn ? .red : .black)
            Toggle(isOn: $isOn) {
                Text("Change State")
            }.fixedSize()
        }.padding()
    }
}

struct StateDemo_Previews: PreviewProvider {
    static var previews: some View {
        StateDemo()
    }
}
