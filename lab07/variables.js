/*
 * This code is broken! Can you figure out why
 * and fix it?
 */

function doubleIfEven(n) {
    if (even(n)) return double(n);
    return n;
}

function even(a) {
    if (a%2 == 0) {
        return true;
    }
    else {
        return false;
    }
}

function double(a) {
    return a*2;
}


// Get command line argument and run function

const input = process.argv.slice(2).map(x => parseInt(x));
if (input === undefined) {
    throw new Error(`input not supplied`);
}

for (let num of input) {
    console.log(doubleIfEven(num));
}
