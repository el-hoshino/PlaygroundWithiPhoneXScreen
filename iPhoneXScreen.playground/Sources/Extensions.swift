import UIKit

extension CGRect {
    
    public func rect(inside insets: UIEdgeInsets) -> CGRect {
        
        return UIEdgeInsetsInsetRect(self, insets)
        
    }
    
}

extension UIView {
    
    public enum Insets {
        case layoutMargins
        case safeArea
    }
    
    public func bounds(inside insets: Insets) -> CGRect {
        
        switch insets {
        case .layoutMargins:
            return self.bounds.rect(inside: self.layoutMargins)
            
        case .safeArea:
            return self.bounds.rect(inside: self.safeAreaInsets)
        }
        
    }
    
}
