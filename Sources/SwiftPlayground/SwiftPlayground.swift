// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        var isRunning = true
print("What is your age?")
while isRunning {
if let input = readLine(), let age = Int(input) {
    if age <= 0 || age >= 123 {
        print("Age incorrect.")
        isRunning = false
    } else if age <= 17 {
        print("Too young.")
        isRunning = false
    } else {
        print("You may enter")
        isRunning = false
    }
} else {
    print("Please enter a number.")
}
    }
    }
}