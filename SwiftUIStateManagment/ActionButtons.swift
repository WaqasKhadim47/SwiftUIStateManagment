//
//  ActionButtons.swift
//  SwiftUIStateManagment
//
//  Created by Waqas Khadim on 27/07/2023.
//

import SwiftUI

struct ActionButtons: View {
    @State private var isActionSheetOpen : Bool = false
    @State private var cancelLogout : Bool = false
    var body: some View {
        Button {
            isActionSheetOpen.toggle()
        } label: {
            Text("Logout")
        }.actionSheet(isPresented: $isActionSheetOpen) {
            ActionSheet(title: Text("Are you sure you want to logout?"),
            buttons: [
                .destructive(Text("Logout"), action: {
                    print("conform logout")
                }),
                .cancel(Text("Cancel"),action: {
                    cancelLogout.toggle()
                })
                
            ])
        }.alert(isPresented: $cancelLogout) {
            Alert(title: Text("Logout canceled"))
        }

    }
}

struct ActionButtons_Previews: PreviewProvider {
    static var previews: some View {
        ActionButtons()
    }
}
