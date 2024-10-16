//
//  ContentView.swift
//  Prueba
//
//  Created by alumno on 10/16/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State var pusasiones: Bool = true
    var body: some View {
        HStack{
            VStack {
                Model3D(named: "Scene", bundle: realityKitContentBundle)
                    .padding(.bottom, 50)
                Model3D(named: "Earth", bundle: realityKitContentBundle)
                    .padding(.bottom, 0)
            }
                Text("Hello, world!")
                Text("Hello, world! \(pusasiones)")
                Text("Hello, world!")
                Button(action: { pusasiones = !pusasiones
                    print("hola mundo desde consola \(pusasiones)")}, label: {Text("Hola mundo")})
                
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}

