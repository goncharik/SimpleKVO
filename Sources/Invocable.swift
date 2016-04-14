// A protocol for a type that can be invoked
internal protocol Invocable: class {
    func invoke(data: Any)
}
