//
//  ToggleChildView.swift
//  SwiftUIStateManagment
//
//  Created by Waqas Khadim on 25/07/2023.
//

import SwiftUI

struct ToggleChildView: View {
    @Binding var isOn : Bool
    var body: some View {
        Toggle(isOn: $isOn) {
            Text("Change State")
        }.fixedSize()
    }
}

struct ToggleChildView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleChildView(isOn: .constant(false))
    }
}
