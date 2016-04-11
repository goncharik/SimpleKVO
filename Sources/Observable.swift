public class Observable<T> {

    let didChange = Event<(T, T)>()
    private var value: T

    init(_ initialValue: T) {
        value = initialValue
    }

    func set(newValue: T) {
        let oldValue = value
        value = newValue
        didChange.raise(oldValue, newValue)
    }

    func get() -> T {
        return value
    }
}

infix operator <- {}

func <-<T> (property: Observable<T>, @autoclosure value: () -> T) {
    property.set(value())
}
