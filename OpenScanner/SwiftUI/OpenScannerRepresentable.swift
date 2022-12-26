//
//  OpenScannerRepresentable.swift
//  OpenScanner
//
//  Created by Shubham Kamdi on 12/25/22.
//

import Foundation
import SwiftUI
public struct OpenScannerRepresentable: UIViewRepresentable {
    
    public var documentImageHandler: (([UIImage]) -> ())?
    public var documentScannerErrorHandler: ((Error) -> ())?
    public var documentScannerCancelHandler: (() -> ())?
    
    public init(documentImageHandler: (([UIImage]) -> Void)? = nil, documentScannerErrorHandler: ((Error) -> Void)? = nil, documentScannerCancelHandler: (() -> Void)? = nil) {
        self.documentImageHandler = documentImageHandler
        self.documentScannerErrorHandler = documentScannerErrorHandler
        self.documentScannerCancelHandler = documentScannerCancelHandler
    }
    public func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
 
    public func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    public func makeUIView(context: Context) -> some UIView {
        let visionView = VisionView(.zero)
        visionView.delegate = context.coordinator
        return visionView
    }
}

