//
//  EnvironmentObjectDemo.swift
//  SwiftUIStateManagment
//
//  Created by Waqas Khadim on 26/07/2023.
//

import SwiftUI

struct EnvironmentObjectDemo: View {
    @ObservedObject var user : User = User()
    @ObservedObject var account : Account = Account()
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Logged In user: \(user.name)")
                    .font(.title2)
                
                TextField("User", text: $user.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                NavigationLink("Navigate to second view", destination: {
                    SecondView()
                })
                
            }.padding()
        }.environmentObject(user)
        .environmentObject(account)
    }
}

struct EnvironmentObjectDemo_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectDemo()
    }
}
