# Prolog Puzzle Solver

This project implements a solver for a 4x4 puzzle using Prolog. It explores different search strategies including Depth-First Search (DFS), Breadth-First Search (BFS), and a heuristic-based approach. The puzzle is solved by filling a 4x4 grid with numbers from 1 to 4 such that each row, column, and 2x2 subgrid contains all different numbers.

## Key Components

1. **move_index/4**
   - **Purpose**: Adds a digit to a specific index in the list.
   - **Usage**: `move_index(Index, OldList, Digit, NewList).`

2. **check_q/1**
   - **Purpose**: Checks the queue for the BFS algorithm.
   - **Usage**: `check_q(Queue).`

3. **check/1**
   - **Purpose**: Verifies if a board configuration is valid.
   - **Usage**: `check(Board).`

4. **valid/1**
   - **Purpose**: Ensures all rows, columns, and 2x2 subgrids contain unique numbers between 1 and 4.
   - **Usage**: `valid(Board).`

5. **place/4**
   - **Purpose**: Places a digit at a specific index in the board if the position is empty.
   - **Usage**: `place(Board, Index, Digit, NewBoard).`

6. **first_empty/2**
   - **Purpose**: Finds the first empty position in the board.
   - **Usage**: `first_empty(Board, Index).`

7. **next_move/2**
   - **Purpose**: Generates possible moves from the current board state.
   - **Usage**: `next_move(Board, Moves).`

8. **dfs/1**
   - **Purpose**: Implements Depth-First Search to solve the puzzle.
   - **Usage**: `dfs(Board).`

9. **bfs/1**
   - **Purpose**: Implements Breadth-First Search to solve the puzzle.
   - **Usage**: `bfs(Board).`

10. **heuristic/1**
    - **Purpose**: Implements a heuristic-based search to solve the puzzle.
    - **Usage**: `heuristic(Board).`

## Description

The project focuses on solving a constraint satisfaction problem (CSP) using Prolog, which is one of the earliest approaches in the field of artificial intelligence (AI). CSPs are mathematical problems defined by a set of objects whose state must satisfy a number of constraints or limitations. In this specific puzzle:

- Each of the 16 cells must contain a number from 1 to 4.
- Each row, column, and 2x2 subgrid must have all unique numbers.

## Solving Strategies

1. **Depth-First Search (DFS)**: Explores as far as possible along each branch before backtracking. It's implemented in the `dfs/1` predicate.
  
2. **Breadth-First Search (BFS)**: Explores all nodes at the present depth level before moving on to nodes at the next depth level. It's implemented in the `bfs/1` predicate.

3. **Heuristic-Based Search**: Uses heuristics to prioritize which paths to explore first, potentially leading to faster solutions. It's implemented in the `heuristic/1` predicate.

## Usage

To use this Prolog solver, you will need to:
1. Load the code into a Prolog interpreter.
2. Define your initial board state.
3. Call the desired solving predicate (`dfs(Board)`, `bfs(Board)`, or `heuristic(Board)`).

### Example

```prolog
?- initial_board(Board),
   dfs(Board).

?- initial_board(Board),
   bfs(Board).

?- initial_board(Board),
   heuristic(Board).
```
```Puzzle Grid
+---+---+---+---+
| A1 | A2 | B1 | B2 |
+---+---+---+---+
| C1 | C2 | D1 | D2 |
+---+---+---+---+
| A3 | A4 | B3 | B4 |
+---+---+---+---+
| C3 | C4 | D3 | D4 |
+---+---+---+---+

In this grid:

A1, A2, B1, B2 are the cells in the top-left 2x2 subgrid.
C1, C2, D1, D2 are the cells in the top-right 2x2 subgrid.
A3, A4, B3, B4 are the cells in the bottom-left 2x2 subgrid.
C3, C4, D3, D4 are the cells in the bottom-right 2x2 subgrid.
```
##Conclusion

This project demonstrates the application of Prolog in solving a classical CSP. Prolog's built-in support for logical reasoning and constraint satisfaction makes it an ideal choice for such problems. The use of different search strategies highlights the versatility of Prolog in exploring various approaches to problem-solving
