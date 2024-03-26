/*
CS401/501: Exercise 0

The use of .collect(), .filter() are NOT allowed. This will result in a 0 on the assignment 

Read Chapter 1-3 on the Rust book prior to attempting this: 
https://doc.rust-lang.org/book/
*/

pub mod warmup_functions {
    pub fn more_x_than_y(_s: &str) -> bool {
        // TODO: Complete this function
        // Given a str: "xyxyxx" return true if there are more "x"s than "y"s, otherwise false

    }
    
    pub fn shift_zeroes(_arr: &mut [i32]) {
        // TODO: Complete this function
        // Given an arr: [0, 1, 0, 2] -> [1, 2, 0, 0]
        // Keep the order of the nums, send all 0's to the end
        // Must be in-place
    
    }

    pub fn calc_avg(_arr: &[f64]) -> Option<f64> {
        // TODO: Complete this function
        // Given the arr: [1, 1, 1, 1, 1, 1] -> 1
        // Return the average of the numbers in the arr

    }

    pub fn partition(_arr: &mut [i32], left: usize, right: usize) -> usize {
        // TODO: Quick sort partition
        /* Given the arr: [0, 2, 1, 5, 3] 
           Given the left: 0
           Given the right: 1
           -> [0, 1, 2, 5, 3] 
        */
        // Must be in-place

    }

    pub fn quick_sort(_arr: &mut [i32], left: isize, right: isize) {
        // TODO: Quick sort, in-place
        // Given an arr: [5, 4, 3, 2, 1] -> [1, 2, 3, 4, 5]

    }    
}