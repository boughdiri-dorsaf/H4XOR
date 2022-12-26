//
//  detailView.swift
//  H4XOR
//
//  Created by Boughdiri Dorsaf on 26/12/2022.
//

import SwiftUI
import WebKit

struct detailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        detailView(url: "https://www.apple.com")
    }
}
