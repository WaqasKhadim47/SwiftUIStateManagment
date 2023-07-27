//
//  TextViewModifier.swift
//  SwiftUIStateManagment
//
//  Created by Waqas Khadim on 27/07/2023.
//

import SwiftUI



struct DetailedInfoTitleModifier: ViewModifier {
  // 2
  func body(content: Content) -> some View {
    content
      // 3
      .lineLimit(1)
      .font(.title2)
      .bold()
  }
}

struct ButtonLabelModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.title2)
      .padding(.horizontal, 30)
      .padding(.vertical, 8)
      .foregroundColor(Color.pink)
      .overlay(
        RoundedRectangle(cornerRadius: 8)
          .stroke(Color.pink, lineWidth: 1.5)
      )
  }
}
