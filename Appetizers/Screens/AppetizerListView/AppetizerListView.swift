//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Dmitry Sechkarenko on 22.02.2022.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject private var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers, id: \.id) { appetizer in
                    Button(action: {viewModel.isShowingDetail = true} ) {
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .sheet(isPresented: $viewModel.isShowingDetail) {
                        AppetizerDetailView(appetizer: appetizer, isShowingDetail: $viewModel.isShowingDetail)
                    }
                    .foregroundColor(.brandPrimary)
                }
                .navigationTitle("🍟 Appetizers")
                .animation(.default, value: viewModel.isLoading)
            }
            .onAppear { viewModel.getAppetizers() }
            
            if viewModel.isLoading { LoadingView() }
        }
        
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message)
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
