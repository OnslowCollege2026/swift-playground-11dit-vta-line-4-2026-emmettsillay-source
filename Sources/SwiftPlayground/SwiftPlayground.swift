// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

/// Creates the constants for food types, food cost, drink types and drink costs.
let foods: [String] = [ "Burger", "Sushi", "Pizza", "Garlic bread", "Pork bun", "Dumplings" ]
let foodsCost: [Double] = [7, 4, 5, 4, 5, 5]
let drinks: [String] = [ "Juice", "Up & go", "Gatorade", "Water", "Coffee", "Fruit soda drink" ]
let drinksCost: [Double] = [4, 4.5, 6, 3, 6, 4]

// Constants for both food / drink types and their costs. Also holds the total cost of order.
let foodAndCost = Array(zip(foods, foodsCost))
let drinksAndCost = Array(zip(drinks, drinksCost))
var totalCost: [Double] = [0]

// Allows the repeating while loop that runs the entire code to run.
var isRunning = true



// Prints welcome message / Asks user if they would like to order a drink / food.
print("Welcome to SelfServe3001, Would you like to select a food or drink?")

// 
while isRunning {

let input = readLine()!.lowercased()

    if input == "food" {
        print("You have selected: \(input)")
        print()

        print("Food Types:")
        foodAndCost.enumerated().forEach { index, foodAndCost in
        print("\(index + 1). \(foodAndCost.0) | $\(foodAndCost.1)")
        }
        print()

        print("Enter a number:")
        
        if let input = readLine(), let index = Int(input), index >= 0 && index <= foodsCost.count {
            let priceAdding = foodsCost[index - 1]
            let currentTotal = totalCost.reduce(0, +)
            let newTotal = currentTotal + priceAdding
            totalCost = [newTotal]
            print("Cost added to total. Current total = $\(totalCost[0])")
            print()
            print("Would you like to order again, if Yes type 'food' or 'drink'. If no type 'q' ")
        }

    } else if input == "drink" {
        print("You have selected: \(input)")
        print()

        print("Food Types:")
        drinksAndCost.enumerated().forEach { index, drinksAndCost in
        print("\(index + 1). \(drinksAndCost.0) | $\(drinksAndCost.1)")
        }
        print()

        print("Enter a number:")
        
        if let input = readLine(), let index = Int(input), index >= 0 && index <= drinksCost.count {
            let priceAdding = drinksCost[index - 1]
            let currentTotal = totalCost.reduce(0, +)
            let newTotal = currentTotal + priceAdding
            totalCost = [newTotal]
            print("Cost added to total. Current total = $\(totalCost[0])")
            print()
            print("Would you like to order again, if Yes type 'food' or 'drink'. If no type 'q' ")
        }
    } else if input == "q" {
        isRunning = false
    } else {
        print("Invalid input, try again.")
    }
}
print()
print("Thank you for ordering. Your total cost is: $\(totalCost[0])")
print("Cash or card?")


    }
}


