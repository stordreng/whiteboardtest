import Whiteboard

/// Allocates the `Whiteboard` slots for different TextMessage types.
///
/// By allocating typed slots we are able to ensure type saftey....
enum GlobalWhiteboardSlot: Int, WhiteboardSlot {
    
    ///
    case messageOne = 1

    ///
    case messageTwo = 2

    ///
    case messageThree = 3

}