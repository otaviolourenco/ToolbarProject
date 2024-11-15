//
//  ContentView.swift
//  ToolbarProject
//
//  Created by Otavio Lourenço on 15/11/2024.
//

import SwiftUI

struct ContentView: View {
    @State var isPresenting: Bool = false
    
    var body: some View {
        NavigationStack{
            Text("Initial View")
                .toolbar{
                    ToolbarItem(placement: .topBarLeading){
                        Button(action: {
                            isPresenting = true
                        }, label: {
                            Image(systemName: "gear")
                        })
                    }
                }
                .sheet(isPresented: $isPresenting) {
                    NavigationStack{
                        Text("Setting Page")
                            .toolbar{
                                ToolbarItem{
                                    Button("Save"){}
                                }
                            }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
