#!/bin/bash

printf "\n<<< Running $0 >>>\n"

exists bash && echo "excellent" || echo "bogus"
exists nonexistent && echo "excellent" || echo "bogus"

type exists

