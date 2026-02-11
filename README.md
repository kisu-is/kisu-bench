Very rough benchmark comparison for kisu lang.
Ran on AMD Ryzen 7 5800X.

There is no solid way to benchmark nix so benchmarks are done using hyperfine.
Kisu benches avoid criterion due to this and is ran the same way for fairness.  

| Generic    | Time     | Runs |
| ---------- | -------- | ---- |
| `kisu`     | 979.4 µs | 328  |
| `nickel`   | 10.3 ms  | 160  |
| `nix`      | 27.2 ms  | 28   |


| Fib 30     | Time     | Runs |
| ---------- | -------- | ---- |
| `kisu`     | 2.082 s  | 10   |
| `nickel`   | 2.157 s  | 10   |
