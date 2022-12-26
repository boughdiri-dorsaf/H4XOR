//
//  WebView.swift
//  H4XOR
//
//  Created by Boughdiri Dorsaf on 26/12/2022.
//

import Foundation
import SwiftUI
import WebKit

//To create webView
struct WebView : UIViewRepresentable {
    
    let urlString: String?
    
    //To create uikit and turn it in web view
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    //display in webview
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}


