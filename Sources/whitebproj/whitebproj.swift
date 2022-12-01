import Whiteboard
/// #whitebproj struct
/// this struct holds the original contents of the messages

public struct whitebproj {
    public private(set) var textOne = "Message Received"
    public private(set) var textTwo = "Roger That"
    public private(set) var textThree = "I am intact!"

    public init() {
    }
}

enum GlobalWhiteboardSlot: Int, WhiteboardSlot {
    case messageOne = 1
    case messageTwo = 2
    case messageThree = 3
}

struct TextMessage: WhiteboardSlotted, Equatable {
    var whiteboardSlot: GlobalWhiteboardSlot
    let message: String
    
    public init(slot: String){
        whiteboardSlot = slot
    }
}

let testWhiteboard = Whiteboard()