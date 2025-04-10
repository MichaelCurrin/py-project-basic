import argparse


def main():
    """
    Main command-line entry-point.
    """
    parser = argparse.ArgumentParser(description="App description.")

    parser.add_argument(
        "--foo",
        "-f",
        metavar="BAR",
        type=str,
        help="Help text here",
    )
    args = parser.parse_args()

    foo = args.foo
    print(f"Hello {foo}")

if __name__ == "__main__":
    main()
