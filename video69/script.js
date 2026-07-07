// Haary  ne exercise 11 krwai khud
                                     // First method
/* 
1 se 6 tak ke numbers ka array banate hain
const numbers = [1, 2, 3, 4, 5, 6];

// reduce() se factorial nikalna
const factorial = numbers.reduce((a, b) => {
    return a * b;
}, 1);  // initial value 1

console.log("6! =", factorial);
*/


                        //   Second method     
let a = 7

function factorial(number){
   let arr = Array.from(Array(number+1).keys())
   let c = arr.slice(1,).reduce((a, b)=> a*b )
   return c
}


function facFor(number){
    let fac = 1;
    for (let index = 1; index <= number; index++) {
        fac = fac * index
    }
    return fac
}
console.log(factorial(a))
console.log(facFor(a))