use std::hint::black_box;
fn main() {
    config_bench();
}

fn config_bench() {
    let program = black_box(std::fs::read_to_string("kisu/bench.is").unwrap());
    println!("{:?}", black_box(kisu::eval(&program)));
}
