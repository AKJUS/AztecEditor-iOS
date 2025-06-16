import Foundation


public struct AttributeType: RawRepresentable, Hashable {
    
    public typealias RawValue = String
    
    public let rawValue: String
    
    // MARK: - CSS Support
    
    public static var cssAttributeTypes: Set<AttributeType> = [.style]
    
    // MARK: - Initializers
    
    public init?(rawValue: RawValue) {
        self.init(rawValue)
    }
    
    public init(_ rawValue: RawValue) {
        self.rawValue = rawValue
    }
    
    // MARK: - Equatable
    
    public static func ==(lhs: AttributeType, rhs: AttributeType) -> Bool{
        return lhs.rawValue.lowercased() == rhs.rawValue.lowercased()
    }
}


public extension AttributeType {
    static let `class` = AttributeType("class")
    static let href = AttributeType("href")
    static let rel = AttributeType("rel")
    static let src = AttributeType("src")
    static let style = AttributeType("style")
    static let target = AttributeType("target")
    static let reversed = AttributeType("reversed")
    static let start = AttributeType("start")
}
