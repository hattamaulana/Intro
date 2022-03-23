//
//  ContentView.swift
//  intro
//
//  Created by attaham on 20/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.white)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            HStack {
                
                VStack(alignment: .leading, spacing: 0, content: {
                    Text("SNOWBOARD")
                        .padding()
                    
                    Spacer(minLength: 300)
                    
                    Text("Riders\ntalked, and we listened")
                        .font(.system(size: 40))
                        .padding(.all)
                    
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width: 14, height: 14)
                        .padding()
                    
                    Text("Geometric")
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                        .padding()
                    
                    Spacer()
                    
                    HStack {
                        RoundedRectangle(cornerRadius: 65/2)
                            .frame(width: 65, height: 65)
                            .overlay(Image("ic_cart").frame(width: 65, height: 65))
                        
                        Text("View Collection")
                    }
                    .padding()
                })
                
                Spacer()
            
                Image("skate")
                    .resizable()
                    .frame(width: 96, height: 700, alignment: .center)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
