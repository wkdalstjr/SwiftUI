//
//  QRCodeScannerExampleView.swift
//  QRCode_reader_swiftui_tutorial
//
//  Created by Jeff Jeong on 2020/08/07.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//
import SwiftUI

struct QRCodeScannerExampleView: View {
    
    @State var isPresentingScanner = false
    @State var scannedCode: String?

    var body: some View {
            
        ZStack{
            
            if self.scannedCode != nil {
                MyWebview(urlToLoad: self.scannedCode!)
            } else {
                MyWebview(urlToLoad: "https://www.naver.com")
            }
            
            VStack{
                
                Spacer()
                
                Button(action: {
                    self.isPresentingScanner = true
                }){
                    Text("QRCode Scan")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding()
                        .background(.yellow)
                        .cornerRadius(12)
                        .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 5)
                        )
                }
                .sheet(isPresented: $isPresentingScanner) {
                    self.scannerSheet
                }
                Spacer().frame(height: 30)
            }
        }
            
    }
    
    var scannerSheet : some View {
        ZStack{
            CodeScannerView(
                codeTypes: [.qr],
                completion: { result in
                    if case let .success(code) = result {
                        self.scannedCode = code
                        self.isPresentingScanner = false
                    }
                }
            )
            QRCodeGuideLineView()
        }
    }
}

struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeScannerExampleView()
    }
}
