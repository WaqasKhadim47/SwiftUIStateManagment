//
//  Extensions.swift
//  SwiftUIStateManagment
//
//  Created by Waqas Khadim on 27/07/2023.
//

import SwiftUI

extension Text {
    func applyTextStyle() -> some View {
        modifier(DetailedInfoTitleModifier())
    }
}

extension Button {
    func applyButtonStyle() -> some View {
        modifier(ButtonLabelModifier())
    }
}
