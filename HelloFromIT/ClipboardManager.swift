//
//  ClipboardManager.swift
//  HelloFromIT
//
//  Created by Justin Hold on 2/25/25.
//

import Foundation
import AppKit

/// A utility class for managing clipboard operations.
///
/// This class provides static methods to simplify copying text to the system clipboard on macOS.
///
/// ## Overview
///
/// `ClipboardManager` offers a simplified interface for copying text content to the macOS
/// system clipboard using `NSPasteboard`. The class handles clearing the pasteboard contents
/// before writing new data to ensure clean clipboard operations.
///
/// ## Example Usage
///
/// ```swift
/// // Copy some text to the clipboard
/// let textToCopy = "Hello, world!"
/// ClipboardManager.copyToClipboard(text: textToCopy)
///
/// // The text is now available for pasting from the system clipboard
/// ```
class ClipboardManager {
	
	/// Copies the provided text to the system clipboard.
	///
	/// This method clears the current contents of the general pasteboard and
	/// then writes the provided text to it, making it available for pasting.
	///
	/// - Parameter text: The string to copy to the clipboard
	static func copyToClipboard(text: String) {
		let pasteboard = NSPasteboard.general
		pasteboard.clearContents()
		pasteboard.writeObjects([text as NSString])
	}
}
