//
//  VissionService.swift
//  OpenScanner
//
//  Created by Shubham Kamdi on 12/25/22.
//

import Foundation
import Vision
import VisionKit

public class VisionView: UIView {
    private var vissionVC: VNDocumentCameraViewController?
    private var inferenceService: InferenceService?
    public var delegate: OpenScannerDelegate? {
        didSet {
            inferenceService?.setDelegate(delegate)
        }
    }
    public init(_ frame: CGRect) {
        super.init(frame: frame)
        addView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addView() {
        vissionVC = VNDocumentCameraViewController()
        inferenceService = InferenceService(delegate)
        if let vissionVC = vissionVC {
            vissionVC.delegate = inferenceService
            self.addSubview(vissionVC.view)
            vissionVC.view.frame = self.bounds
        }
    }
    
}
