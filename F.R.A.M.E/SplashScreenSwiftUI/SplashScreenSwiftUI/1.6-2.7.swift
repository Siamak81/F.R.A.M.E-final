//
//  1.6-2.7.swift
//  F.R.A.M.E
//
//  Created by siamak on 5/31/1401 AP.
//

import SwiftUI

struct __6_2_7: View {
    @State private var isLoading = false
    var body: some View {
            ZStack {
                
                ZStack {
                    
                    
                    Rectangle().foregroundColor(.white).ignoresSafeArea()
                    Text("Recommended control measures based on the calculated fire risk level:").font(.title3).foregroundColor(.blue).multilineTextAlignment(.leading).padding(.all).padding(.top, 20.0).padding(.bottom, 600.0)

                        Text("""
        1.6 < R < 2.7 :‌
        Sprinkler protection.
        """).multilineTextAlignment(.leading)
                        .padding(/*@START_MENU_TOKEN@*/.horizontal, -160.0/*@END_MENU_TOKEN@*/)
                        .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    if isLoading {
                        ZStack {
                            Color(.systemBackground).ignoresSafeArea()
                            LoadingView()
                        }
                    }
                }
            }.onAppear {startFakeNetworkCall()}
    }
    func startFakeNetworkCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            isLoading = false
        }
    }
}

struct __6_2_7_Previews: PreviewProvider {
    static var previews: some View {
        __6_2_7()
    }
}
