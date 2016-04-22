public class Observable<T> {

    public let didChange = Event<(T, T)>()
    private var value: T

    public init(_ initialValue: T) {
        value = initialValue
    }

    public func set(newValue: T) {
        let oldValue = value
        value = newValue
        didChange.raise(oldValue, newValue)
    }

    public func get() -> T {
        return value
    }
}

infix operator <- {}

public func <-<T> (property: Observable<T>, @autoclosure value: () -> T) {
    property.set(value())
}
