// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
// Allows repetiton of the "birdRunning" while statement.
var birdRunning = false

var insectRunning = false

// Array of bird species
let birds: [String] = [
    "Tieke",
    "Kākā",
    "Takahē",
    "Hihi",
    "Kiwi",
    "Pāteke",
    "Tūī",
    "Kererū",
    "Cancel"
]

// Use in birds Switch as the final tally counter for it.
var birdsTally: [String] = [
]

// Unused currently.
let insects: [String] = [
    "Giant Wētā",
    "Tree Wētā",
    "Cave Wētā",
    "Putoko",
    "Pūngāwerewere",
    "Ngaokeoke",
    "Waemano",
    "Kapowai",
    "Cancel"
]

// Unused currently.
var insectsTally: [String] = [
]

// Used for numbers before birds / insects.
var counter = 0

print("Welcome to the Animalfinder3000")
print("Have you seen a Bird or Insect:")



let input = readLine()!.lowercased()
// Prints first Question. / Bird section.
if input == "bird" {
    birdRunning = true
    print()
    print("What Bird have you seen (Type number):")

// Prints out a number before the bird type.
while birdRunning == true {
    counter = 0
    birds.forEach { bird in
    counter = counter + 1
    print("\(counter), \(bird)")
    }

// User input for bird seen.
print("Enter a number:")
print()
let input = readLine()!
let seenBird = Int(input)

// Adds a tally to the tally variable for whichever bird user chose.
switch seenBird {
case 1: print("Tally added to \(birds[0]), would you like to add another: Y/N")
birdsTally.append(birds[0])
switcProgram1()

case 2: print("Tally added to \(birds[1]), would you like to add another: Y/N")
birdsTally.append(birds[1])
switcProgram1()

case 3: print("Tally added to \(birds[2]), would you like to add another: Y/N")
birdsTally.append(birds[2])
switcProgram1()

case 4: print("Tally added to \(birds[3]), would you like to add another: Y/N")
birdsTally.append(birds[3])
switcProgram1()

case 5: print("Tally added to \(birds[4]), would you like to add another: Y/N")
birdsTally.append(birds[4])
switcProgram1()

case 6: print("Tally added to \(birds[5]), would you like to add another: Y/N")
birdsTally.append(birds[5])
switcProgram1()

case 7: print("Tally added to \(birds[6]), would you like to add another: Y/N")
birdsTally.append(birds[6])
switcProgram1()

case 8: print("Tally added to \(birds[7]), would you like to add another: Y/N")
birdsTally.append(birds[7])
switcProgram1()

case 9: print("Canceled")
birdRunning = false

default: print("Input incorrect, try again.")
}
}
// First question. / Insect section.
} else if input == "insect" {
print()
print("Work in progress!")
} else {
    print("Wrong input.")
}

// Prints what Birds / Insects user saw and how many.
print()
print("Today you saw:")

// Adds a tally to the tally variable.
let tally = birdsTally.reduce(into: [:]) { counts, birdsTally in
    counts[birdsTally, default: 0] += 1
}
tally.forEach { bird, count in
print("\(count). \(bird)")
}

// Function for bird section switch
// y = continues the loop, n = stops the loop
func switcProgram1() {
    let input = readLine()!.lowercased()
if input == "y" {
birdRunning = true
} else if input == "n" {
    birdRunning = false
} else {
    print("Invalid input")
}

}

    }
    }