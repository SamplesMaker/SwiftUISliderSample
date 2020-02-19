//
//  ContentView.swift
//  SliderSample
//
//  Created by MakeItSimple on 2020/02/20.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var displayValue = 0.0
    
    var maximunValue = 100.0
    var minimunValue = 0.0
    
    var body: some View {
        VStack {
            HStack {
                Text("\(Int(minimunValue))")
                Slider(value: $displayValue, in: minimunValue ... maximunValue)
                Text("\(Int(maximunValue))")
            }.padding()
            
            Text("Current Value is \(Int(displayValue))").padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
