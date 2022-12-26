//
//  OpenScannerDelegate.swift
//  OpenScanner
//
//  Created by Shubham Kamdi on 12/25/22.
//

import Foundation
import UIKit
public protocol OpenScannerDelegate {
    func openScanner(_ documentImages: [UIImage])
    func openScannerDidPressCancel()
    func openScanner(_ didFailWithError: Error)
}
