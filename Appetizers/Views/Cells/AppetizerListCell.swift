//
//  AppetizerCell.swift
//  Appetizers
//
//  Created by Dmitry Sechkarenko on 22.02.2022.
//

import SwiftUI

struct AppetizerListCell: View {
    
    @State private var isShowingDetail = false
    
    let appetizer: Appetizer
    
    var body: some View {
        Button (action: { isShowingDetail.toggle() } ) {
            HStack {
                AppetizerRemoteImage(urlString: appetizer.imageURL)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(8)

                VStack(alignment: .leading, spacing: 5) {
                    Text(appetizer.name)
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    Text("$\(appetizer.price, specifier: "%.2f")")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                }
                .padding(.leading)
            }
        }
        .sheet(isPresented: $isShowingDetail) {
            AppetizerDetailView(appetizer: appetizer, isShowingDetail: $isShowingDetail)
        }
    }
}


struct AppetizerCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListCell(appetizer: MockData.sampleAppetizer)
    }
}


