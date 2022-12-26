//
//  OpenScannerRepresentable + Coordinator.swift
//  OpenScanner
//
//  Created by Shubham Kamdi on 12/25/22.
//

import Foundation
import SwiftUI

extension OpenScannerRepresentable {
    public class Coordinator: OpenScannerDelegate {
        
        var parent: OpenScannerRepresentable?
        
        init(_ parent: OpenScannerRepresentable?) {
            self.parent = parent
        }
        
        public func openScanner(_ documentImages: [UIImage]) {
            guard let openScanner = parent,
                  let documentImageHandler = openScanner.documentImageHandler else { return }
            documentImageHandler(documentImages)
        }
        
        public func openScannerDidPressCancel() {
            guard let openScanner = parent,
                  let documentScannerCancelHandler = openScanner.documentScannerCancelHandler
            else { return }
            documentScannerCancelHandler()
        }
        
        public func openScanner(_ didFailWithError: Error) {
            guard let openScanner = parent,
                  let documentScannerErrorHandler = openScanner.documentScannerErrorHandler
            else { return }
            documentScannerErrorHandler(didFailWithError)
        }
        
    }
}
