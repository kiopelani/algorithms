function binarySearch(array, item){

}

// TESTING //
function assertEquals(expected, actual){
  console.log(expected === actual);
}

// TESTS //
var oddArray = [1,2,3,4,5];
var evenArray = [1,2,3,4,5,6];
console.log("TESTS");
console.log("****Odd Length Array****");

// odd array length best case
assertEquals(2, binarySearch(oddArray, 3));

// odd array length average case
assertEquals(3, binarySearch(oddArray, 4));

// odd array length worst case
assertEquals(0, binarySearch(oddArray, 1));

console.log("****Even Length Array****");

// even array length best case
assertEquals(2, binarySearch(evenArray, 3));

// even array length average case
assertEquals(1, binarySearch(evenArray, 2));

// even array length worst case
assertEquals(5, binarySearch(evenArray, 6));

console.log("****Edge Cases****");

// when array is empty
assertEquals(null, binarySearch([], 1));

// when array length is one
assertEquals(0, binarySearch([1], 1));

// when item is greater than all values in array
assertEquals(null, binarySearch(oddArray, 100));

// when item is less than all values in array
assertEquals(null, binarySearch(evenArray, 0));




