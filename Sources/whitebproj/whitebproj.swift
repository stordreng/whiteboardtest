import Whiteboard

public struct whitebproj {
    public private(set) var text = "Hello, World!"

    public init() {
    }
}

enum GlobalWhiteboardSlot: Int, WhiteboardSlot {
    case messageOne = 1
    case messageTwo = 2
    case messageThree = 3
}


let testWhiteboard = Whiteboard()