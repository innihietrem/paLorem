struct Person: Comparable {
    var name: String
    var age: Int

    // Implementation of the < operator
    static func < (lhs: Person, rhs: Person) -> Bool {
        return lhs.age < rhs.age
    }

    // Optionally, you can also provide an implementation for == if needed
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.age == rhs.age && lhs.name == rhs.name
    }
}

// Example usage
let person1 = Person(name: "Alice", age: 25)
let person2 = Person(name: "Bob", age: 30)

if person1 < person2 {
    print("\(person1.name) is younger than \(person2.name)")
} else {
    print("\(person1.name) is not younger than \(person2.name)")
}
