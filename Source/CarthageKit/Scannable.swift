import Foundation
import Result

/// Anything that can be parsed from a Scanner.
public protocol Scannable {
	/// Attempts to parse an instance of the receiver from the given scanner.
	///
	/// If parsing fails, the scanner will be left at the first invalid
	/// character (with any partially valid input already consumed).
	static func from(_ scanner: Scanner, base: URL?) -> Result<Self, ScannableError>
}

extension Scannable {
	static func from(_ scanner: Scanner) -> Result<Self, ScannableError> {
		self.from(scanner, nil)
	}
}
