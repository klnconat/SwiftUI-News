//
//  PostView.swift
//  H4X0R News
//
//  Created by Onat KILINÇ on 2.07.2024.
//

import Foundation
import SwiftUI

struct PostView: View {
    let postPoint: Int
    let postBody: String
    let postURL: String?
    
    var body: some View {
        HStack {
            Text("\(postPoint)")
            Text(postBody)
        }
        
    }
}
