# Matthew Mendoza - Assignment 05 part 2

CSC 174 section 2 Spring 2023

- [Matthew Mendoza - Assignment 05 part 2](#matthew-mendoza---assignment-05-part-2)
  - [Assignment 5 Part 2](#assignment-5-part-2)
    - [Question 1](#question-1)
    - [Question 1 My Solution](#question-1-my-solution)
    - [Question 2](#question-2)
    - [Question 2 My Solution](#question-2-my-solution)
    - [Question 3](#question-3)
    - [Question 3 My Solution](#question-3-my-solution)

## Assignment 5 Part 2

### Question 1

Given $R(C, D, E, F, W)$, and the following functional dependencies:

$F\:\rightarrow \:E$

$F\:\rightarrow \:W$

$C\:\rightarrow \:D$

We decompose R into two relations $R_1(C, D)$ and $R_2(E, F, W, C)$
Does this decomposition have the lossless join property?

### Question 1 My Solution

Yes, because the functional dependencies are preserved in the decomposition.
The functional dependencies are preserved because:

| Iteration | Result | Using |
| --------- | ------ | ----- |
| data      | data   | data  |

### Question 2

Given $R\left(a,\:b,\:c,\:d,\:e,\:f,\:w\right)$ and the following functional dependencies:

$fd_1\::\:a\:\rightarrow \:b,\:c$

$fd_2\::\:d\:\rightarrow \:e,\:f$

Decompose $R$ into 3rd normal form with both dependency
preservation with property and loss-less property.

### Question 2 My Solution

| col01 | col02 |
| ----- | ----- |
| data  | data  |

### Question 3

Given $R\left(x,\:y,\:c,\:z,\:e,\:f,\:w\right)$. There are two keys: $\left(x,\:y\right)$ and $z$.
Given the following functional dependency: $F=\left\{\left\{x,y\right\}\rightarrow \left\{c,\:z,\:e,\:f,\:w\right\},\:z\:\rightarrow \:\left\{x,\:y,\:c,\:e,\:f,\:w\right\},\:f\:\rightarrow \:x\right\}$.
Decompose $R$ into `BCNF`.

### Question 3 My Solution

| col01 | col02 |
| ----- | ----- |
| data  | data  |
