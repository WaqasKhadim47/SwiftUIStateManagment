//
//  ThirdView.swift
//  SwiftUIStateManagment
//
//  Created by Waqas Khadim on 26/07/2023.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var user : User
    @EnvironmentObject var account : Account
    var body: some View {
        Text("Logged In user = \(user.name) & Account balance is \(account.balance)")
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
            .environmentObject(User())
            .environmentObject(Account())
    }
}
