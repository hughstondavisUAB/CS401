/*
Project 1:  Quad-trees 

; total-rect-area: returns the total integer area covered by any (one or more) rectangles in the given list 
; Don't double-count. Your solution must be in O(n log n).
Hint: implement an immutable quad-tree to represent 2D space; FYI, a solution takes only ~90 lines of code. (You could also use a sorting and scanning approach.)
*/


pub mod overlapping_rect {
    #[derive(Debug, Clone)]
    pub enum Quad {
        Empty,
        Filled,
        Node { 
            x: i64, 
            y: i64, 
            q1: Box<Quad>, 
            q2: Box<Quad>, 
            q3: Box<Quad>, 
            q4: Box<Quad> 
        },
    }

    #[derive(Debug, Clone)]
    pub struct Rect {
        x0: i64,
        y0: i64,
        x1: i64,
        y1: i64,
    }

    // TODO

    pub fn total_rect_area(rects: Vec<Rect>) -> i64 {
        // TODO
    }
}