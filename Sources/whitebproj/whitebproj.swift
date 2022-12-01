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
/// #GlobalWhiteboardSlot enum
/// this enum is used to place messages in correct slots and to prevent 
/// messages being placed in out of range slots.
enum GlobalWhiteboardSlot: Int, WhiteboardSlot {
    case messageOne = 1
    case messageTwo = 2
    case messageThree = 3
}

/// #TextMessage struct
/// this struct contains the slot in which the message should be placed
/// and the message itself.
/// It is initialised with both variables as inputs
struct TextMessage: WhiteboardSlotted, Equatable {
    var whiteboardSlot: GlobalWhiteboardSlot
    let textMessage: String

    public init(slot: GlobalWhiteboardSlot, message: String){
        whiteboardSlot = slot
        textMessage = message 
    }
}

let testWhiteboard = Whiteboard()