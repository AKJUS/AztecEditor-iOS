import Foundation

open class ItalicCSSAttributeMatcher: CSSAttributeMatcher {

    public init() {}

    public func check(_ cssAttribute: CSSAttribute) -> Bool {
        guard let value = cssAttribute.value else {
            return false
        }
        
        return cssAttribute.type == .fontStyle && value.contains(FontStyle.italic.rawValue)
    }
}
