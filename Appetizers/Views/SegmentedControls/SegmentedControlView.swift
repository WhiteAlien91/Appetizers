//
//  SegmentedControlView.swift
//  Appetizers
//
//  Created by Dmitry Sechkarenko on 17.03.2022.
//

import SwiftUI

struct SegmentedControlView: View {
    
    @State private var selected: SelectedTitle = .store
    var title: String
    
    var body: some View {
        Picker(title, selection: $selected) {
            ForEach(SelectedTitle.allCases, id: \.self) {
                Text($0.rawValue)
            }
        }
        .pickerStyle(.segmented)
        .padding()
    }
}

struct segmentedControlView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlView(title: "Title")
    }
}

enum SelectedTitle: String, CaseIterable {
    case store = "Store"
    case favorite = "Favorite"
}
