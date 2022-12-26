//
//  InferenceService.swift
//  OpenScanner
//
//  Created by Shubham Kamdi on 12/25/22.
//

import Foundation
import Vision
import VisionKit

class InferenceService: NSObject, VNDocumentCameraViewControllerDelegate {
    private var openScannerDelegate: OpenScannerDelegate?
    init(_ delegate: OpenScannerDelegate?) {
        self.openScannerDelegate = delegate
    }
    
    func setDelegate(_ delegate: OpenScannerDelegate?) {
        self.openScannerDelegate = delegate
    }
    
    func documentCameraViewControllerDidCancel(_ controller: VNDocumentCameraViewController) {
        openScannerDelegate?.openScannerDidPressCancel()
    }
    
    func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFinishWith scan: VNDocumentCameraScan) {
        var pages: [UIImage] = []
        for i in 0 ..< scan.pageCount {
            pages.append(scan.imageOfPage(at: i))
        }
        openScannerDelegate?.openScanner(pages)
    }
    
    func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFailWithError error: Error) {
        openScannerDelegate?.openScanner(error)
    }
}
