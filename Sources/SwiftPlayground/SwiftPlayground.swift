// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

// Allows repetiton of the "birdRunning" while statement.
var birdRunning = false

// Allows the "Today you saw:" code to run.
var endingCode = false

// Allows repetition of the "insectRunning" while statement.
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

/*


BIRD SECTION


*/
// Prints first Question.
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

// Adds a tally to the tally variable.
let tally = birdsTally.reduce(into: [:]) { counts, birdsTally in
    counts[birdsTally, default: 0] += 1
}
endingCode = true
tally.forEach { birds, count in
print("\(count). \(birds)")
}

/* 


INSECT SECTION



*/
// First question.
} else if input == "insect" {
print()

insectRunning = true

// Prints out a number before the insect type.
while insectRunning {
    counter = 0
    insects.forEach { insects in
    counter = counter + 1
    print("\(counter), \(insects)")
    }

// User input for insect seen.
print("Enter a number:")
print()
let input = readLine()!
let seenInsect = Int(input)

// Adds a tally to the tally variable for whichever insect user chose.
switch seenInsect {
case 1: print("Tally added to \(insects[0]), would you like to add another: Y/N")
insectsTally.append(insects[0])
switcProgram2()

case 2: print("Tally added to \(insects[1]), would you like to add another: Y/N")
insectsTally.append(insects[1])
switcProgram2()

case 3: print("Tally added to \(insects[2]), would you like to add another: Y/N")
insectsTally.append(insects[2])
switcProgram2()

case 4: print("Tally added to \(insects[3]), would you like to add another: Y/N")
insectsTally.append(insects[3])
switcProgram2()

case 5: print("Tally added to \(insects[4]), would you like to add another: Y/N")
insectsTally.append(insects[4])
switcProgram2()

case 6: print("Tally added to \(insects[5]), would you like to add another: Y/N")
insectsTally.append(insects[5])
switcProgram2()

case 7: print("Tally added to \(insects[6]), would you like to add another: Y/N")
insectsTally.append(insects[6])
switcProgram2()

case 8: print("Tally added to \(insects[7]), would you like to add another: Y/N")
insectsTally.append(insects[7])
switcProgram2()

case 9: print("Canceled")
insectRunning = false

default: print("Input incorrect, try again.")
}
}
endingCode = true
} else {
    print("Wrong input.")
}

// Prints what Birds / Insects user saw and how many.
if endingCode {
print()
print("Today you saw:")
}
// Adds a tally to the tally variable.
let tally = insectsTally.reduce(into: [:]) { counts, insectsTally in
    counts[insectsTally, default: 0] += 1
}
tally.forEach { insects, count in
print("\(count). \(insects)")
}

// Function for bird section switch
// y = continues the loop, n = stops the loop, anything else is invalid
func switcProgram1() {
    let input = readLine()!.lowercased()
if input == "y" {
birdRunning = true
} else if input == "n" {
    birdRunning = false
} else {
    print("Invalid input.")
}

}

func switcProgram2() {
    let input = readLine()!.lowercased()
    if input == "y" {
        insectRunning = true
    } else if input == "n" {
        insectRunning = false 
    } else {
        print("Invalid input.")
    }
}

    }
    }