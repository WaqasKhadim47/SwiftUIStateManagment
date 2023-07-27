//
//  SecondView.swift
//  SwiftUIStateManagment
//
//  Created by Waqas Khadim on 26/07/2023.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var account : Account
    var body: some View {
        VStack{
            
            Stepper("Balance - \(account.balance)", value: $account.balance)
            
            
            NavigationLink("Navigate to third view", destination: ThirdView())
            
        }.padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
            .environmentObject(Account())
    }
}
