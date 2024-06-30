import UIKit

class Library {
    /// 稳定
    func run() {
        step1()
        
        
        if step2() {
            step3()
        }
        
        for _ in 0..<4 {
            step4()
        }
        
        step5()
    }
    
    func step1() {
        
    }
    
    /// 支持变化
    internal func step2() -> Bool {
        return true
    }
    
    func step3() {
        
    }
    
    internal func step4() {
        
    }
    
    func step5() {
        
    }
}

class Application: Library {
    override func step2() -> Bool {
        return false
    }
    
    override  func step4() {
        print("step4")
    }
}

 
let app = Application()
app.run()
