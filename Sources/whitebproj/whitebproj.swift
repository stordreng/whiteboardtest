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
/// and the message itself
struct TextMessageOne: WhiteboardSlotted, Equatable {
    static let whiteboardSlot: GlobalWhiteboardSlot = .messageOne
    let textMessage: String

    public init(message: String){
        textMessage = message 
    }
}

struct TextMessageTwo: WhiteboardSlotted, Equatable {
    static let whiteboardSlot: GlobalWhiteboardSlot = .messageTwo
    let textMessage: String

    public init(message: String){
        textMessage = message 
    }
}

struct TextMessageThree: WhiteboardSlotted, Equatable {
    static let whiteboardSlot: GlobalWhiteboardSlot = .messageThree
    let textMessage: String

    public init(message: String){
        textMessage = message 
    }
}