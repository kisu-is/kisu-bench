Very rough benchmark comparison for kisu lang.
Ran on AMD Ryzen 7 5800X.

There is no solid way to benchmark nix so benchmarks are done using hyperfine.
Kisu benches avoid criterion due to this and is ran the same way for fairness. 

| Benchmark  | Time     | Runs |
| ---------- | -------- | ---- |
| `kisu`     | 938.4 µs | 1106 |
| `nickel`   | 9.3  ms  | 262  |
| `nix`      | 20.6 ms  | 129  |
