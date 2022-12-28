# OpenScanner
OpenScanner is a framework which provides smart document scanning solution to iOS apps. It is compatible with both UIKit and SwiftUI. At its core it is an 
abstraction for Apple's VNDocumentCameraViewController. 

# Installation 

At the moment you can install OpenScanner vie CocoaPods 

Add the following line to your podfile: 
```
pod 'OpenScanner', '1.0.2' 
```
Switch over to your terminal and excute the following command

```
pod install
```

# UIKit Integration: 

```
import OpenScanner
```

Add this code to your UIViewController

```
let scanner = VisionView(self.containerView.frame)
scanner.delegate = self
self.containerView.addSubview(scanner)
scanner.frame = self.containerView.bounds
```

Conform your UIViewController with OpenScannerDelegate

```
extension VC: OpenScannerDelegate {
    func openScanner(_ documentImages: [UIImage]) {
       //UImage array retrieved
    }
    
    // Remove from subview
    func openScannerDidPressCancel() {
        print("Cancel Pressed")
    }
    
    func openScanner(_ didFailWithError: Error) {
        print(didFailWithError)
    }
    
}
```
