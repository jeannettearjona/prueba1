//
//  ContentView.swift
//  AppChistesJeannette
//
//  Created by Alumno on 21/09/23.
//

import SwiftUI

struct ContentView: View {
    //@StateObject var ChistesVM = ChistesViewModel()
    @StateObject var IngredientesVM = IngredientesViewModel()
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(IngredientesVM.arrIngredientes) { item in
                    NavigationLink(destination: IngredientesDetailView(), label: {IngredientesItemView(item: item)})

                }
            }
            
            .task {
                do {
                    try await IngredientesVM.getIngredientesData()
                }
                catch{
                    print("error")
                }
                
            }
        }

    }
                       
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

