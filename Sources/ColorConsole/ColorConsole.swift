public enum ConsoleColorCodeOption : Int {
	case none = 0, bold = 1, underline = 4
}

public enum ConsoleColorCodes : Int {
	case black = 30, red, green, yellow, blue, magenta, cyan, white, `default` = 39
	case lightBlack = 90, lightRed, lightGreen, lightYellow, lightBlue, lightMagenta, lightCyan, lightWhite
	
	func foreground(_ option : ConsoleColorCodeOption = .none) -> String {
		return "\u{001B}[\(option.rawValue);\(self.rawValue)m"
	}
	func background() -> String {
		return "\u{001B}[\(self.rawValue + 10)m"
	}
}
