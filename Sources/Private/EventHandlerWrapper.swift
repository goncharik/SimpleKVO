// takes a reference to a handler, as a class method, allowing
// a weak reference to the owning type.
// see: http://oleb.net/blog/2014/07/swift-instance-methods-curried-functions/
internal class EventHandlerWrapper<T: AnyObject, U> : Invocable, Disposable {
    weak var target: T?
    let handler: T -> U -> ()
    let event: Event<U>

    init(target: T?, handler: T -> U -> (), event: Event<U>){
        self.target = target
        self.handler = handler
        self.event = event;
    }

    func invoke(data: Any) -> () {
        if let t = target {
            handler(t)(data as! U)
        }
    }

    func dispose() {
        event.eventHandlers = event.eventHandlers.filter { $0 !== self }
    }
}