//
//  ContentView.swift
//  igGlobal
//
//  Created by Muzammil on 01/08/2023.
//

import SwiftUI
import WebKit
import UIKit
struct ContentView: View {
    @State private var showSplash = true
    private let url: String = "https://portal.igglobalandsavings.com"
    var body: some View{
        VStack(){
            if showSplash {
                withAnimation{
                    SplashView()
                }
            }else{
                WebView(url: URL(string: url)!)
            }
            
        }
        .onAppear{
            DispatchQueue.main
                .asyncAfter(deadline: .now()+3)
            {
                self.showSplash = false
            }
        }
    }
    
}

struct WebView: UIViewRepresentable {
    var url : URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
