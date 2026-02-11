#!/usr/bin/env bash

# records
echo "benchmarking kisu..."
hyperfine -N 'kisu-cli kisu/bench.is'

echo "benchmarking nix..."
hyperfine -N 'nix-instantiate --eval nix/bench.nix --quiet'

echo "benchmarking nickel..."
hyperfine -N 'nickel eval nickel/bench.ncl'

# fib
echo "benchmarking kisu..."
hyperfine -N 'kisu-cli kisu/fib.is'

echo "benchmarking nickel..."
hyperfine -N 'nickel eval nickel/fib.ncl'
