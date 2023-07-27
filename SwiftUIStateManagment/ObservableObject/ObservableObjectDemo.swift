//
//  ObservableObjectDemo.swift
//  SwiftUIStateManagment
//
//  Created by Waqas Khadim on 25/07/2023.
//

import SwiftUI

struct ObservableObjectDemo: View {
    
    @ObservedObject var user : User = User()
    
    var body: some View {
        VStack{
            Text("You are typing: \(user.name)")
                .font(.title2)
            
            TextField("User", text: $user.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
        }.padding()
    }
}

struct ObservableObjectDemo_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObjectDemo()
    }
}
