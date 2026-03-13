"""Python project main module."""

import argparse


def main() -> None:
    """Start the app."""
    parser = argparse.ArgumentParser(description="App description.")

    parser.add_argument(
        "--foo",
        "-f",
        metavar="BAR",
        type=str,
        help="Help text here",
    )
    args = parser.parse_args()

    print(f"Hello {args.foo}")


if __name__ == "__main__":
    main()
