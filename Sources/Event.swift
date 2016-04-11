/// An event provides a mechanism for raising notifications, together with some
/// associated data. Multiple function handlers can be added, with each being invoked,
/// with the event data, when the event is raised.
public class Event<T> {

    public typealias EventHandler = T -> ()

    private var eventHandlers = [Invocable]()

    public init() {
    }

    /// Raises the event, invoking all handlers
    public func raise(data: T) {
        for handler in self.eventHandlers {
            handler.invoke(data)
        }
    }

    /// Adds the given handler
    public func addHandler<U: AnyObject>(target: U, handler: (U) -> EventHandler) -> Disposable {
        let wrapper = EventHandlerWrapper(target: target, handler: handler, event: self)
        eventHandlers.append(wrapper)
        return wrapper
    }
}