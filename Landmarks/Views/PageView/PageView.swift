//
//  PageView.swift
//  Landmarks
//
//  Created by Mikhail Dudarev on 01.08.2021.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    var nextPage: Int {
        let nextIndex = currentPage + 1
        
        guard nextIndex < pages.count else {
            return 0
        }
        
        return nextIndex
    }
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                PageViewController(pages: pages, currentPage: $currentPage)
                Button(action: {
                    currentPage = nextPage
                }) {
                    Image(systemName: "arrow.right.circle")
                        .foregroundColor(.white)
                }
                .padding()
            }
            Text("Current Page: \(currentPage)")
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}
