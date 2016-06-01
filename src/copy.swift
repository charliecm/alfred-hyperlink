import Cocoa

let argv = Process.arguments[1].characters.split(" ", maxSplit: 1).map(String.init)
let url = argv.count > 0 ? argv[0] : "about:blank"
let title = argv.count > 1 ? argv[1] : "Untitled"
let pasteboard = NSPasteboard.generalPasteboard()
let type = NSPasteboardTypeHTML

pasteboard.declareTypes([type], owner: nil)
pasteboard.setString("<a href='\(url)'>\(title)</a>", forType: type)
pasteboard.setString(title + " — " + url, forType: NSPasteboardTypeString)

print(title)
