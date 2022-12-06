import Whiteboard

struct TextMessageThree: WhiteboardSlotted, Equatable {
    static let whiteboardSlot: GlobalWhiteboardSlot = .messageThree
    let textMessage: String

    public init(message: String){
        textMessage = message 
    }
}