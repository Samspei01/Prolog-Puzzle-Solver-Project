# Prolog-Puzzle-Solver-Project
This project implements a solver for a 4x4 puzzle using Prolog. It explores different search strategies including Depth-First Search (DFS), Breadth-First Search (BFS), and a heuristic-based approach. The puzzle is solved by filling a 4x4 grid with numbers from 1 to 4 such that each row, column, and 2x2 subgrid contains all different numbers.

Key Components:
move_index/4

Purpose: Adds a digit to a specific index in the list.
Usage: move_index(Index, OldList, Digit, NewList).
check_q/1

Purpose: Checks the queue for the BFS algorithm.
Usage: check_q(Queue).
check/1

Purpose: Verifies if a board configuration is valid.
Usage: check(Board).
valid/1

Purpose: Ensures all rows, columns, and 2x2 subgrids contain unique numbers between 1 and 4.
Usage: valid(Board).
place/4

Purpose: Places a digit at a specific index in the board if the position is empty.
Usage: place(Board, Index, Digit, NewBoard).
first_empty/2

Purpose: Finds the first empty position in the board.
Usage: first_empty(Board, Index).
next_move/2

Purpose: Generates possible moves from the current board state.
Usage: next_move(Board, Moves).
dfs/1

Purpose: Implements Depth-First Search to solve the puzzle.
Usage: dfs(Board).
bfs/1

Purpose: Implements Breadth-First Search to solve the puzzle.
Usage: bfs(Board).
heuristic/1

Purpose: Implements a heuristic-based search to solve the puzzle.
Usage: heuristic(Board).
Description
The project focuses on solving a constraint satisfaction problem (CSP) using Prolog, which is one of the earliest approaches in the field of artificial intelligence (AI). CSPs are mathematical problems defined by a set of objects whose state must satisfy a number of constraints or limitations. In this specific puzzle:

Each of the 16 cells must contain a number from 1 to 4.
Each row, column, and 2x2 subgrid must have all unique numbers.
Solving Strategies
Depth-First Search (DFS): Explores as far as possible along each branch before backtracking. It's implemented in the dfs/1 predicate.

Breadth-First Search (BFS): Explores all nodes at the present depth level before moving on to nodes at the next depth level. It's implemented in the bfs/1 predicate.

Heuristic-Based Search: Uses heuristics to prioritize which paths to explore first, potentially leading to faster solutions. It's implemented in the heuristic/1 predicate.

Usage
To use this Prolog solver, you will need to:

Load the code into a Prolog interpreter.
Define your initial board state.
Call the desired solving predicate (dfs(Board), bfs(Board), or heuristic(Board)).
Example
prolog
Copy code
?- initial_board(Board),
   dfs(Board).

?- initial_board(Board),
   bfs(Board).

?- initial_board(Board),
   heuristic(Board).
Future Work
Improve the heuristic function for more efficient solving.
Extend the solver to handle larger grids.
Add a graphical interface for better visualization of the solving process.

Conclusion
This project demonstrates the application of Prolog in solving a classical CSP. Prolog's built-in support for logical reasoning and constraint satisfaction makes it an ideal choice for such problems. The use of different search strategies highlights the versatility of Prolog in exploring various approaches to problem-solving.

