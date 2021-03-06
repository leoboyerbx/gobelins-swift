//: [Previous](@previous)

// Switch statements are more powerful than their C-like counterparts. Here are a few of those
// differences to get us started:
//
// Unlike C-like languages, switch statements do not require a "break" statement to prevent falling
// through to the next case.
//
// Additionally, multiple conditions can be separated by a comma for a single case to match
// multiple conditions.
//
// Switch statements must also be exhaustive and include all possible values, or the compiler will
// generate an error.
//
// There are many more differences, but let's start with a simple switch statement to get our feet
// wet:
let someCharacter: Character = "e"
switch someCharacter
{
case "a", "e", "i", "o", "u":
    "a vowel"
    
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "u", "z":
    "a consonant"
    
// Necessary because switch statements must be exhaustive in order to capture all Characters
default:
    "not a vowel or consonant"
}

// Each case clause must have a statement of some kind. A comment will not suffice.
//
// Otherwise you will get a compilation error. The following won't compile because there is an
// empty case statement:
//
// let anotherCharacter: Character = "a"
// switch anotherCharacter
// {
//		case "a":
//		case "A":
//			"the letter a"
//		default:
//			"not the letter a"
//	}

// We can perform range matching for cases:
let count = 3_000_000_000_000
switch count
{
case 0:
    "no"
case 1...3:
    "a few"
case 4...9:
    "several"
case 10...99:
    "tens of"
case 100...999:
    "hundreds of"
case 1000...999999:
    "thousands of"
default:
    "millions and millions of"
}

// Matching against tuples
//
// In addition to matching Tuples, we can also use ranges inside Tuple values and even match
// against partial Tuple values by using an "_" to ignore matches against a specific value within
// the Tuple.
let somePoint = (1,1)
switch somePoint
{
case (0,0):
    "origin"
    
// Match only against y=0
case (_, 0):
    "On the X axis"
    
// Match only against x=0
case (0, _):
    "On the y axis"
    
// Match x and y from -2 to +2 (inclusive)
case (-2...2, -2...2):
    "On or inside the 2x2 box"
    
// Everything else
default:
    "Outisde the 2x2 box"
}

// Value bindings in switch statements
//
var anotherPoint = (2, 8)
switch anotherPoint
{
// Bind 'x' to the first value (matching any x) of the tuple and match on y=0
case (let x, 0):
    "On the x axis with an x value of \(x)"
    
// Bind 'y' to the second value (matching any y) of the tuple and match against x=0
case (0, let y):
    "On the y axis with an y value of \(y)"
    
    // Bind both values of the tuple, matching any x or y. Note the shorthand of the 'let'
    // outside of the parenthesis. This works with 'var' as well.
    //
    // Also notice that since this matches any x or y, we fulfill the requirement for an exhaustive
// switch.
case let (x, y):
    "Somewhere else on \(x), \(y)"
}

// We can also mix let/var for case statements. The following code block is the same as the
// previous except that the final case statement, which mixes variable and constants for the x and
// y components of the Tuple.
switch anotherPoint
{
case (let x, 0):
    "On the x axis with an x value of \(x)"
    
case (0, let y):
    "On the y axis with an y value of \(y)"
    
case (var x, let y):
    x += 1 // We can modify the variable 'x', but not the constant 'y'
    "Somewhere else on \(x), \(y)"
}

// Where clauses allow us to perform more detailed conditions on case conditions. The where clauses
// work on the values declared on the case line:
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint
{
case let (x, y) where x == y:
    "On the line of x == y"
    
case let (x, y) where x == -y:
    "On the line of x == -y"
    
case let (x, y):
    "Just some arbitrary point"
}

// ------------------------------------------------------------------------------------------------
// Control transfer statements
//
// Swift supports extended versions of continue and break as well as an additional 'fallthrough'
// statement for switch-case constructs.
//
// Since swift doesn't require a break statement to avoid falling through to the next case, we can
// still use them to early-out of the current case without continuing work. The first statement
// after the 'break' will be the next statement following the entire switch construct.
let someValue = 9000
switch someValue
{
case let x where (x & 1) == 1:
    if someValue < 100
    {
        "Odd number less than 100"
        break
    }
    "Odd number greater or equal to 100"
    
case let x where (x & 1) == 0:
    if someValue < 100
    {
        "Even number less than 100"
        break
    }
    "Even number greater or equal to 100"
    
default:
    "Unknown value"
}

// Since each case must have a statement and since we must have an exhaustive switch, we can use
// the break statement to effectively nullify the use of a case:
switch someValue
{
case Int.min...100:
    "Small number"
    
case 101...1000:
    break // We don't care about medium numbers
    
case 1001...100_00:
    "Big number"
    
default:
    break // We don't care about the rest, either
}

// Since we don't need to break out of cases to avoid falling through automatically, we must
// specifically express our intention to fall through using the 'fallthrough' keyword
let integerToDescribe = 5
var integerDescription = "\(integerToDescribe) is"
switch integerToDescribe
{
case 2, 3, 5, 7, 11, 13, 17, 19:
    integerDescription += " a prime number, and also"
    fallthrough
    
default:
    integerDescription += " an integer."
}


//: [Next](@next)
