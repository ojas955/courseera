#!/usr/bin/env bash

set -euo pipefail

read -r -p "Enter principal: " principal
read -r -p "Enter rate of interest: " rate
read -r -p "Enter time period: " time

simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "Simple interest: $simple_interest"
