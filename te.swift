import Foundation

/// A structure for representing an RGB color with optional opacity.
public struct Color {

    /// The RGB color space used for the color.
    public enum RGBColorSpace {
        case sRGB
        // Other color spaces can be added here
    }

    /// The color space of the color.
    public let colorSpace: RGBColorSpace
    
    /// The red component of the color.
    public let red: Float
    
    /// The green component of the color.
    public let green: Float
    
    /// The blue component of the color.
    public let blue: Float
    
    /// The opacity of the color.
    public let opacity: Float
    
    /// Initializes a new color with the specified components.
    ///
    /// - Parameters:
    ///   - colorSpace: The color space of the color. Defaults to `.sRGB`.
    ///   - red: The red component of the color, specified as a value from 0 to 1.
    ///   - green: The green component of the color, specified as a value from 0 to 1.
    ///   - blue: The blue component of the color, specified as a value from 0 to 1.
    ///   - opacity: The opacity of the color, specified as a value from 0 (fully transparent) to 1 (fully opaque). Defaults to 1.
    public init(colorSpace: RGBColorSpace = .sRGB, red: Float, green: Float, blue: Float, opacity: Float = 1) {
        self.colorSpace = colorSpace
        self.red = red
        self.green = green
        self.blue = blue
        self.opacity = opacity
    }
}

// Example usage
let defaultColor = Color(red: 0.5, green: 0.5, blue: 0.5)
let customColor = Color(colorSpace: .sRGB, red: 0.2, green: 0.4, blue: 0.6, opacity: 0.8)

print("Default Color: \(defaultColor)")
print("Custom Color: \(customColor)")
