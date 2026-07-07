function nice(name) {
    console.log("Hey " + name + " you are nice! ")
    console.log("Hey " + name + " you are Good! ")
    console.log("Hey " + name + " your work is brillient! ")
    console.log("Hey " + name + " your course is too good! ")
}
// nice("hussain")

// nice("Ali")

function sum(a, b, c = 3) {
    // console.log(a + b)
    return a + b + c

}

result1 = sum(5, 5)
result2 = sum(10, 5)
result3 = sum(8, 5)
console.log("The total sum is :", result1)
console.log("The total sum is :", result2)
console.log("The total sum is :", result3)

const func1 = (x) =>{
    console.log("I am an arrow function", x)
}
func1(34);
func1(80);
func1(100);