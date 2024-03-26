use project::warmup_functions;

fn main() {
    let mut arr = [5, 2, 9, 1, 5, 6];
    let length: isize = arr.len() as isize;  
    warmup_functions::quick_sort(&mut arr, 0, length - 1);
    println!("Sorted array: {:?}", arr);

    let arr_string = format!(
        "[{}]",
        arr.iter()
            .map(|&num| num.to_string())
            .collect::<Vec<String>>()
            .join(", ")
    );

    std::fs::write("output", arr_string).expect("Unable to create result file");

    // assert!(is_sorted(&arr));
}

fn is_sorted(arr: &[i32]) -> bool {
    arr.windows(2).all(|w| w[0] <= w[1])
}