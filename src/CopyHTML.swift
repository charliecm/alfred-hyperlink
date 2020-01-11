import Cocoa

let argv = CommandLine.arguments[1].split(separator:" ", maxSplits: 1).map(String.init)
let url = argv.count > 0 ? argv[0] : "about:blank"
let title = argv.count > 1 ? argv[1] : "Untitled"
let pasteboard = NSPasteboard.general
let type = NSPasteboard.PasteboardType.html

pasteboard.declareTypes([type], owner: nil)
pasteboard.setString("<a href='\(url)'>\(title)</a>", forType: type)
pasteboard.setString(title + " — " + url, forType: NSPasteboard.PasteboardType.string)

print(title)
