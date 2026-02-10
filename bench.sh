#!/usr/bin/env bash
echo "benchmarking kisu..."
hyperfine 'kisu-cli kisu/bench.is'

echo "benchmarking nix..."
hyperfine 'nix-instantiate --eval nix/bench.nix --quiet'

echo "benchmarking nickel..."
hyperfine 'nickel eval nickel/bench.ncl'
