//
//  DetailView.swift
//  H4X0R News
//
//  Created by Onat KILINÇ on 2.07.2024.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
