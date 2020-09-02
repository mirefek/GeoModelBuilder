import argparse
import sexpdata
import collections

from problem import Problem


if __name__ == "__main__":

    # Parse arguments
    parser = argparse.ArgumentParser(description='Arguments for building a model that satisfies a set of geometry constraints')
    parser.add_argument('--problem', '-p', action='store', type=str, help='Name of the file defining the set of constraints')
    args = parser.parse_args()

    problem = Problem(args.problem)
    problem.preprocess()
    print(problem)

    problem.gen_instructions()
    print(problem.instructions)