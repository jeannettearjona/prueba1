//
//  IngredientesItemView.swift
//  AppChistesJeannette
//
//  Created by Concepción Hernández Flores on 17/10/23.
//

import SwiftUI

struct IngredientesItemView: View {
    //var body: some View {
        let item: IngredientesModel

            var body: some View {
                HStack {
                    Image("lasagna")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)

                    VStack(alignment: .leading, spacing: 8) {
                        Text(item.ingrediente)
                            .font(.headline)
                            .fontWeight(.bold)

                        Text(item.ingrediente)
                            .font(.body)
                    }
                }
                .padding(8)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.vertical, 4)
            }
    }
//}

struct IngredientesItemView_Previews: PreviewProvider {
    static var previews: some View {
        let item = IngredientesModel(ingredienteid: 1, ingrediente: "Ejemplo")
        IngredientesItemView(item: item)
    }
}

