//
//  ListView.swift
//  SwiftUIStateManagment
//
//  Created by Waqas Khadim on 26/07/2023.
//

import SwiftUI

struct ListView: View {
    let fruitslist : [String] = ["Mango","Orrange","Banana","Apple"]
    let titles = ["Fruits 1,Fruits 2,Fruits 3,Fruits 4"]
    var body: some View {
        List{
            ForEach(titles, id: \.self){
                title in
                Section(header: Text(title)) {
                    ForEach(fruitslist, id: \.self){
                        item in
                        Text(item)
                    }
                }
            }
        }.listStyle(GroupedListStyle())
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
