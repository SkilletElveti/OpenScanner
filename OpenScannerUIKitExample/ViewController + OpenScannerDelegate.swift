//
//  ViewController + OpenScannerDelegate.swift
//  OpenScannerUIKitExample
//
//  Created by Shubham Kamdi on 12/25/22.
//

import Foundation
import OpenScanner
import UIKit

extension ViewController: OpenScannerDelegate {
    func openScanner(_ documentImages: [UIImage]) {
        print(documentImages)
    }
    
    // Remove from subview
    func openScannerDidPressCancel() {
        print("Cancel Pressed")
    }
    
    func openScanner(_ didFailWithError: Error) {
        print(didFailWithError)
    }
    
}
