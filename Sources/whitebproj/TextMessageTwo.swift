import Whiteboard

struct TextMessageTwo: WhiteboardSlotted, Equatable {
    static let whiteboardSlot: GlobalWhiteboardSlot = .messageTwo
    let textMessage: String

    public init(message: String){
        textMessage = message 
    }
}