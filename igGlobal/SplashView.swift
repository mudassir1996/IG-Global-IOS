//
//  SplashView.swift
//  igGlobal
//
//  Created by Muzammil on 01/08/2023.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack(){
            Image("splash_bg")
            Image("logo")
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
