//
//  ContentView.swift
//  URLSession-Publisher-SwiftUI-sample
//
//  Created by ogasawara_dev on 2020/04/22.
//  Copyright © 2020 ogasawara_dev. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var companViewModel: CompanyViewModel
    
    var body: some View {
        VStack {
            Text("\(companViewModel.name)")
            Spacer()
            Button(action: {
                self.companViewModel.loadEmployee()
            }, label: {
                Text("start load")
            })
        }.frame(height: 100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(
            companViewModel: CompanyViewModel(name: "No Data")
        )
    }
}
