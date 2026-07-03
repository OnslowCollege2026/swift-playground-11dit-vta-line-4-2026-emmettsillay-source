// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

// Constant name holds the name of the social platform and time is how long the user spent on the platform.
struct SocialPlatforms {
    let name : String
    var time : Double
}

var onlinePlatforms = [
    SocialPlatforms(name: "TikTok", time: 0),
    SocialPlatforms(name: "Instagram", time: 0),
    SocialPlatforms(name: "Youtube shorts", time: 0),
    SocialPlatforms(name: "Twitter", time: 0),
    SocialPlatforms(name: "Snapchat", time: 0),
    SocialPlatforms(name: "Discord", time: 0),
    SocialPlatforms(name: "Other", time: 0)
]

// Constant weekDay holds monday through sunday, hoursSpent holds how long user spent online that day.
struct weekDays {
    let weekDay : String
    var hoursSpent : Double
}

var days = [
    weekDays(weekDay: "Monday", hoursSpent: 0),
    weekDays(weekDay: "Tuesday", hoursSpent: 0),
    weekDays(weekDay: "Wednesday", hoursSpent: 0),
    weekDays(weekDay: "Thursday", hoursSpent: 0),
    weekDays(weekDay: "Friday", hoursSpent: 0),
    weekDays(weekDay: "Saturday", hoursSpent: 0),
    weekDays(weekDay: "Sunday", hoursSpent: 0)
]


// Inserts time spent on platforms into time variable in SocalPlatforms. 
var totalTime = onlinePlatforms.reduce(0, { $0 + $1.time })

// Counts what day it is so code is able to print accurate day.
var counter = 0

/// Holds daily screen time.
var screenTimeLimit : Double = 0.0

/// Runs the while loops that hold all (important) code.
/// Main while loop
var isRunning = true

/// Screen time limit input while loop.
var limitRunning = true

/// Screen time used daily while loop.
var screenTimeRunning = false

// First message.
print("Welcome to TrackAScreen1000™")
print("What is your daily screen time limit?")
print("Enter limit (Integer):")
print()


// Main while loop. (Holds all important code.)
while isRunning {
    while limitRunning {

    let input = Double(readLine() ?? "") ?? -1

// if user inputs more or less than 24 invalidates, if inbetween -1 - 25 gives confirmation message.
    if input > 24 || input < 0 {
        print("Invalid integer. Only input 0-24 (Hours in a day).")
    } else if input <= 24 || input >= 1 {
        print("You have entered \(input), is this correct? Y/N")
        print()

// change ts to not use !
        let userInput = readLine()!.lowercased()
        
// Confirms / Denies users previous screen time limit, anything else than a y/n invalidates.
        if userInput == "y" {
            screenTimeLimit = input
            print()
            print("Current screen time limit : \(screenTimeLimit)")
            print()
            limitRunning = false
            screenTimeRunning = true
        } else if userInput == "n" {
            print("Input cancelled, retry or quit?")
            print("R/Q")
            
            let input = readLine()?.lowercased()

// Retry screen time limit input / Quit code.
            if input == "r" {
                print("Enter limit (Integer):")

            } else if input == "q" {
                print("Quit confirmed. Have a good day.")
                limitRunning = false
                isRunning = false
                screenTimeRunning = false
            } else {
                print("Input only R/Q. Moving back to integer input.")
                print("Input 1-24")
            }
        } else {
            print("Invalid input, retry:")
        }
    }
    }

// Main code for user entering, if user is over time limit it will say so.
    while screenTimeRunning {
        if counter >= 0 && counter <= 6{
        print("Today is \(days[counter].weekDay)")
        print()
        if counter >= 1 {
        print("You spent \(days[counter - 1].hoursSpent) on \(days[counter-1].weekDay).")
        if days[counter - 1].hoursSpent > screenTimeLimit {
            print("That is over your limit!")
        }
        // Runs if counter is > 7 (past sunday).
        } else if counter == 0 {}
            } else if counter >= 7 {
                print("Week ended, you spent:")
                endOfWeekPrint(items: days)
                isRunning = false
            }
            // Main code run.
        if isRunning == true {
            dayCode()
        }
    }
}

// Prints out a number, then a social platform name then how many hours you have spent on that platform.
func printCode(items: [SocialPlatforms]) {
    for (index, item) in items.enumerated() {
        print("\(index + 1). \(item.name) | \(item.time) Hours")
    }
}

// Runs at the end of the week, prints if you've gone over limit on monday for example and how many hours you spent doomscrolling each day.
func endOfWeekPrint(items: [weekDays]) {
    for (index, item) in items.enumerated() {
        print("\(index + 1). \(item.weekDay), you spent: \(item.hoursSpent) Hours doom scrolling.")
        if item.hoursSpent > screenTimeLimit {
            print("You went over your screen time limit on \(item.weekDay)")
            print()
        }
    }
}

// Most important code. (Looking back i should've split this into like 5 different Functions.)
func dayCode() {
    // User inputs number of the platform they used.
        print("What platform did you use?")
        print("Enter platform number or 0 to skip to next day:")
        print()
        printCode(items: onlinePlatforms)

        

            let input = Int(readLine() ?? "") ?? -1
    
// Allows user to input how many hours they used on that platform or 0 to skip day.
        if input >= 1 && input <= 7 {
            print("You have chosen \(onlinePlatforms[input - 1].name)")
            print()
            print("How many hours did you spend on \(onlinePlatforms[input - 1].name)?")
            print("Enter number 1 - 24 or enter 0 to skip to next day:")

            let inputI = Double(readLine() ?? "") ?? -1

// Skips day. (input was 0.)
            if inputI == 0 {

                days[counter].hoursSpent = totalTime

                counter += 1

                totalTime = 0

                for index in onlinePlatforms.indices {
                    onlinePlatforms[index].time = 0
                }

// Runs if answer wasn't less than or 0 and wasnt higher than 24.
            } else if inputI + totalTime <= 23 {

// If answer is higher or equal to 1 and lower or equal to 23 Runs.
// Allows user to input again if totalTime is less than 24 hours
            if inputI >= 1 && inputI <= 23 {
                print("You have spent \(inputI) hours on \(onlinePlatforms[input - 1].name)")
                print("Hours added to total.")
                print()

                onlinePlatforms[input - 1].time += inputI

                totalTime = onlinePlatforms.reduce(0) { $0 + $1.time }
                    } else {
                        print("Only enter numbers 1 - 24")
                    }
// Runs if users input is more or equal to 24, skips to next day.
            }  else if inputI + totalTime >= 24 {
                
                print("Exceeded 24 hours. Remaining hours being added up to 24. Skipping to next day.")
                print()

                totalTime = 24

                days[counter].hoursSpent = totalTime

                counter += 1

                totalTime = 0

                for index in onlinePlatforms.indices {
                    onlinePlatforms[index].time = 0
                }

// If user inputs anything else, runs this code.
            } else {
            print("Enter only integers.")
            print("Try again.")
            print()

        }

// If user inputs 0 will skip the current day.
} else if input == 0 {
    days[counter].hoursSpent = totalTime
    counter += 1
    totalTime = 0
    for index in onlinePlatforms.indices {
        onlinePlatforms[index].time = 0
    }

// Prints if user inputs anything but an integer.
} else {
    print("Enter only integers, try again.")
}

    }


}

}