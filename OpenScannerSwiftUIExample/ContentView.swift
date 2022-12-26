//
//  ContentView.swift
//  OpenScannerSwiftUIExample
//
//  Created by Shubham Kamdi on 12/25/22.
//

import SwiftUI
import OpenScanner
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            OpenScannerRepresentable(
                documentImageHandler: {
                    (Images) in
                    print("Images Received \(Images)")
                },
                documentScannerErrorHandler: {
                    (error) in
                },
                documentScannerCancelHandler: {
                    print("Cancelled")
                }
            ).frame(
                width: UIScreen.main.bounds.width,
                height: UIScreen.main.bounds.height * 0.7
            )
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
