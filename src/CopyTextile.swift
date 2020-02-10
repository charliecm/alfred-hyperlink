import Cocoa

let argv = CommandLine.arguments[1].split(separator:" ", maxSplits: 1).map(String.init)
let url = argv.count > 0 ? argv[0] : ""
let title = argv.count > 1 ? argv[1] : "Untitled"
let pasteboard = NSPasteboard.general
let type = NSPasteboard.PasteboardType.string

pasteboard.declareTypes([type], owner: nil)
pasteboard.setString("\"" + title + "\":" + url, forType: type)

print(title)
