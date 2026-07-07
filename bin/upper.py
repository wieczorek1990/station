#!/usr/bin/env python3
# Produces and prints upper string from first argument.

import sys


def main():
    first_argument = sys.argv[1]
    capitalized = first_argument.upper()
    print(capitalized)


if __name__ == "__main__":
    main()
