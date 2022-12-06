import Whiteboard

/// #TextMessage structs
/// these structs contain the slot in which the message should be placed
/// and the message itself. Due to the WhiteboardSlotted protocol each message must have its own struct
struct TextMessageOne: WhiteboardSlotted {
    static let whiteboardSlot: GlobalWhiteboardSlot = .messageOne
    let textMessage: String

    public init(message: String){
        textMessage = message 
    }
}


extension  TextMessageOne: Equatable {}
