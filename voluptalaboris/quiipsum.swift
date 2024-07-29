import Foundation

class MyClass {
    var subject: NSObject
    var formatter: Formatter

    public init<Subject>(_ subject: Subject, formatter: Formatter) where Subject: NSObject {
        self.subject = subject
        self.formatter = formatter
    }

    func formattedSubject() -> String? {
        if let date = subject as? NSDate, let dateFormatter = formatter as? DateFormatter {
            return dateFormatter.string(from: date as Date)
        }
        // Handle other types and formatters as needed
        return nil
    }
}

// Usage
let date = NSDate()
let dateFormatter = DateFormatter()
dateFormatter.dateStyle = .medium
dateFormatter.timeStyle = .short

let myObject = MyClass(date, formatter: dateFormatter)

if let formattedDate = myObject.formattedSubject() {
    print("Formatted Date: \(formattedDate)")
} else {
    print("Could not format the subject")
}
