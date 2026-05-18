// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        var ingredients: [String] = []
        var isRunning = true
        while isRunning {
            print("Enter your ingredients")
            let input = readLine()!
        if input == "" {
            isRunning = false
        } else {
            ingredients.append(input)
        }

        }
    print("Ingredients list:")
    for ingredients in ingredients {
print(ingredients)
if ingredients == "chocolatte" {
    print("Yum!")
}
    }
    print("Lets start cooking!")
    }
}