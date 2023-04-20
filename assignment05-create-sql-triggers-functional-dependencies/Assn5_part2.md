# Matthew Mendoza - Assignment 05 part 2

CSC 174 section 2 Spring 2023

- [Matthew Mendoza - Assignment 05 part 2](#matthew-mendoza---assignment-05-part-2)
  - [TL;DR - All Solutions](#tldr---all-solutions)
    - [Question 1 Solution](#question-1-solution)
    - [Question 2 Solution](#question-2-solution)
    - [Question 3 Solution](#question-3-solution)
  - [Assignment 5 Part 2 - Work and steps shown](#assignment-5-part-2---work-and-steps-shown)
    - [Question 1](#question-1)
    - [Question 1 - My Solution](#question-1---my-solution)
      - [Question 1 - Step 1 : Set up initial a's](#question-1---step-1--set-up-initial-as)
      - [Question 1 - Step 2 : Follow the production for each Relation (does the values match?)](#question-1---step-2--follow-the-production-for-each-relation-does-the-values-match)
      - [Question 1 - Step 3 : Check rows](#question-1---step-3--check-rows)
    - [Question 2](#question-2)
    - [Question 2 - My Solution](#question-2---my-solution)
      - [Approach 1](#approach-1)
        - [Approach 1 : Attribute A](#approach-1--attribute-a)
        - [Approach 1 : Attribute B](#approach-1--attribute-b)
        - [Approach 1 : Result](#approach-1--result)
      - [Approach 2](#approach-2)
        - [Approach 2 - Step 1 : Initial Set-up](#approach-2---step-1--initial-set-up)
        - [Approach 2 - Step 2 : Follow the functional dependencies](#approach-2---step-2--follow-the-functional-dependencies)
        - [Approach 2 - Step 3 : Check rows](#approach-2---step-3--check-rows)
    - [Question 3](#question-3)
    - [Question 3 - My Solution](#question-3---my-solution)
      - [Question 3 - step 1](#question-3---step-1)
      - [Question 3 - step 2](#question-3---step-2)
      - [Question 3 - Result](#question-3---result)

## TL;DR - All Solutions

### Question 1 Solution

Does this decomposition have the lossless join property?

> Yes, because the functional dependencies are preserved in the decomposition.
> We have a row that are all $\large a$'s

Lossless join decomposition – avoid data corruption : No gain/no loss

| Relations                       | C        | D        | E        | F        | W        |
| ------------------------------- | -------- | -------- | -------- | -------- | -------- |
| $R_1\left(C,\:D\right)$         | $a_{11}$ | $a_{12}$ | $b_{13}$ | $b_{14}$ | $b_{15}$ |
| $R_2\left(E,\:F,\:W,\:C\right)$ | $a_{21}$ | $a_{22}$ | $a_{23}$ | $a_{24}$ | $a_{25}$ |

### Question 2 Solution

> $R_3\left(A,\:D,\:W\right)$ is `lossless`

|                             | A        | B        | C        | D        | E        | F        | W        |
| :-------------------------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- |
| $R_3\left(A,\:D,\:W\right)$ | $a_{31}$ | $a_{32}$ | $a_{33}$ | $a_{34}$ | $a_{35}$ | $a_{36}$ | $a_{37}$ |

### Question 3 Solution

$\Large D=\left\{R_1\left(y,\:c,\:z,\:e,\:f,\:w\right),\:R_2\left(f,\:x\right)\right\}$

## Assignment 5 Part 2 - Work and steps shown

### Question 1

Given $R(C, D, E, F, W)$, and the following functional dependencies:

$F\:\rightarrow \:E$

$F\:\rightarrow \:W$

$C\:\rightarrow \:D$

We decompose R into two relations $R_1(C, D)$ and $R_2(E, F, W, C)$
Does this decomposition have the lossless join property?

### Question 1 - My Solution

Does this decomposition have the lossless join property?

> Yes, because the functional dependencies are preserved in the decomposition.
> We have a row that are all $\large a$'s

Lossless join decomposition – avoid data corruption : No gain/no loss

| Relations                       | C        | D        | E        | F        | W        |
| ------------------------------- | -------- | -------- | -------- | -------- | -------- |
| $R_1\left(C,\:D\right)$         | $a_{11}$ | $a_{12}$ | $b_{13}$ | $b_{14}$ | $b_{15}$ |
| $R_2\left(E,\:F,\:W,\:C\right)$ | $a_{21}$ | $a_{22}$ | $a_{23}$ | $a_{24}$ | $a_{25}$ |

#### Question 1 - Step 1 : Set up initial a's

| Relations | C        | D        | E        | F        | W        |
| --------- | -------- | -------- | -------- | -------- | -------- |
| $R_1$     | $b_{11}$ | $b_{12}$ | $b_{13}$ | $b_{14}$ | $b_{15}$ |
| $R_2$     | $b_{21}$ | $b_{22}$ | $b_{23}$ | $b_{24}$ | $b_{25}$ |

Cross-out and change corresponding relational attributes to $\large a$

$R_1\left(C,\:D\right)$

$R_2\left(E,\:F,\:W,\:C\right)$

| Relations                       | C                      | D                      | E                      | F                      | W                      |
| ------------------------------- | ---------------------- | ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| $R_1\left(C,\:D\right)$         | ~~- $b_{11}$ -~~ **a** | ~~- $b_{12}$ -~~ **a** | $b_{13}$               | $b_{14}$               | $b_{15}$               |
| $R_2\left(E,\:F,\:W,\:C\right)$ | ~~- $b_{21}$ -~~ **a** | $b_{22}$               | ~~- $b_{23}$ -~~ **a** | ~~- $b_{24}$ -~~ **a** | ~~- $b_{25}$ -~~ **a** |

| Relations                       | C        | D        | E        | F        | W        |
| ------------------------------- | -------- | -------- | -------- | -------- | -------- |
| $R_1\left(C,\:D\right)$         | $a_{11}$ | $a_{12}$ | $b_{13}$ | $b_{14}$ | $b_{15}$ |
| $R_2\left(E,\:F,\:W,\:C\right)$ | $a_{21}$ | $b_{22}$ | $a_{23}$ | $a_{24}$ | $a_{25}$ |

#### Question 1 - Step 2 : Follow the production for each Relation (does the values match?)

$F\:\rightarrow \:E$

$F\:\rightarrow \:W$

$C\:\rightarrow \:D$

| Relations                       | C        | D        | E        | F        | W        |
| ------------------------------- | -------- | -------- | -------- | -------- | -------- |
| $R_1\left(C,\:D\right)$         | $a_{11}$ | $a_{12}$ | $b_{13}$ | $b_{14}$ | $b_{15}$ |
| $R_2\left(E,\:F,\:W,\:C\right)$ | $a_{21}$ | $b_{22}$ | $a_{23}$ | $a_{24}$ | $a_{25}$ |

**$R_1\left(C,\:D\right)$**:

$F\:\rightarrow \:E$ : $b_{14}\:==\:b_{13}$ ? `TRUE`, so no change

$F\:\rightarrow \:W$ : $b_{14}\:==\:b_{15}$ ? `TRUE`, so no change

$C\:\rightarrow \:D$ : $a_{11}\:==\:a_{12}$ ? `TRUE`, so no change

**$R_2\left(E,\:F,\:W,\:C\right)$**:

$F\:\rightarrow \:E$ : $a_{24}\:==\:a_{23}$ ? `TRUE`, so no change

$F\:\rightarrow \:W$ : $a_{24}\:==\:a_{25}$ ? `TRUE`, so no change

$C\:\rightarrow \:D$ : $a_{21}\:==\:b_{22}$ ? `FALSE`, so change $b_{22}$ to $a_{22}$

| Relations                       | C        | D                      | E        | F        | W        |
| ------------------------------- | -------- | ---------------------- | -------- | -------- | -------- |
| $R_1\left(C,\:D\right)$         | $a_{11}$ | $a_{12}$               | $b_{13}$ | $b_{14}$ | $b_{15}$ |
| $R_2\left(E,\:F,\:W,\:C\right)$ | $a_{21}$ | ~~- $b_{22}$ -~~ **a** | $a_{23}$ | $a_{24}$ | $a_{25}$ |

| Relations                       | C        | D        | E        | F        | W        |
| ------------------------------- | -------- | -------- | -------- | -------- | -------- |
| $R_1\left(C,\:D\right)$         | $a_{11}$ | $a_{12}$ | $b_{13}$ | $b_{14}$ | $b_{15}$ |
| $R_2\left(E,\:F,\:W,\:C\right)$ | $a_{21}$ | $a_{22}$ | $a_{23}$ | $a_{24}$ | $a_{25}$ |

#### Question 1 - Step 3 : Check rows

Does this decomposition have the lossless join property?

> Yes, because the functional dependencies are preserved in the decomposition.
> We have a row that are all $\large a$'s

Lossless join decomposition – avoid data corruption : No gain/no loss

| Relations                       | C        | D        | E        | F        | W        |
| :------------------------------ | -------- | -------- | -------- | -------- | -------- |
| $R_1\left(C,\:D\right)$         | $a_{11}$ | $a_{12}$ | $b_{13}$ | $b_{14}$ | $b_{15}$ |
| $R_2\left(E,\:F,\:W,\:C\right)$ | $a_{21}$ | $a_{22}$ | $a_{23}$ | $a_{24}$ | $a_{25}$ |

### Question 2

Given $R\left(A,\:B,\:C,\:D,\:E,\:F,\:W\right)$ and the following functional dependencies:

$fd_1\::\:A\:\rightarrow \:\:\left\{B,\:C\right\}$

$fd_2\::\:D\:\rightarrow \:\:\left\{E,\:F\right\}$

Decompose $R$ into 3rd normal form with both dependency
preservation with property and loss-less property.

Lossless join decomposition – avoid data corruption : No gain/no loss

Dependency preserving – improve performance : No joins needed to check a dependency

### Question 2 - My Solution

> $R_3\left(A,\:D,\:W\right)$ is lossless

|                             | A        | B        | C        | D        | E        | F        | W        |
| :-------------------------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- |
| $R_3\left(A,\:D,\:W\right)$ | $a_{31}$ | $a_{32}$ | $a_{33}$ | $a_{34}$ | $a_{35}$ | $a_{36}$ | $a_{37}$ |

#### Approach 1

$R\left(A,\:B,\:C,\:D,\:E,\:F,\:W\right)$

$fd_1\::\:A\:\rightarrow \:\:\left\{B,\:C\right\}$

$fd_2\::\:D\:\rightarrow \:\:\left\{E,\:F\right\}$

$\huge K\::=\:\left\{A,\:B,\:C,\:D,\:E,\:F,\:W\right\}$

##### Approach 1 : Attribute A

$K-A=\left\{B,\:C,\:D,\:E,\:F,\:W\right\}$

$\left\{B,\:C,\:D,\:E,\:F,\:W\right\}^+=W\:\ne R$

##### Approach 1 : Attribute B

$K-B=\left\{A,\:C,\:D,\:E,\:F,\:W\right\}$

| $\left\{K-B\right\}^+$ |                                                  |            |
| ---------------------- | ------------------------------------------------ | ---------- |
|                        | $=\left\{A,\:C,\:D,\:G,\:F,\:W\right\}^+$        | Remove $B$ |
|                        | $=\left\{A,\:B,\:C,\:D,\:G,\:F,\:W\right\}=R$ ✅ |            |

| $AC\::\left\{K-C\right\}^+$ |                                                  |            |
| --------------------------- | ------------------------------------------------ | ---------- |
|                             | $=\left\{A,\:D,\:G,\:F,\:W\right\}^+$            | Remove $C$ |
|                             | $=\left\{A,\:B,\:C,\:D,\:E,\:F,\:W\right\}=R$ ✅ |            |

| $AD\::\left\{K-D\right\}^+$ |                                                 |
| --------------------------- | ----------------------------------------------- |
|                             | $=\left\{A,\:G,\:F,\:W\right\}^+$               |
|                             | $=\left\{A,\:B,\:C,\:E,\:F,\:W\right\}\ne R$ ❌ |

| $AE\::\left\{K-E\right\}^+$ |                                                  |            |
| --------------------------- | ------------------------------------------------ | ---------- |
|                             | $=\left\{A,\:D,\:F,\:W\right\}^+$                | Remove $E$ |
|                             | $=\left\{A,\:B,\:C,\:D,\:E,\:F,\:W\right\}=R$ ✅ |            |

| $AF\::\left\{K-F\right\}^+$ |                                                  |            |
| --------------------------- | ------------------------------------------------ | ---------- |
|                             | $=\left\{A,\:D,\:F,\:U\right\}^+$                | Remove $F$ |
|                             | $=\left\{A,\:B,\:C,\:D,\:E,\:F,\:U\right\}=R$ ✅ |            |

| $AW\::\left\{K-W\right\}^+$ |                                                     |
| --------------------------- | --------------------------------------------------- |
|                             | $=\left\{A,\:D,\:W\right\}^+$                       |
|                             | $=\left\{A,\:B,\:C,\:D,\:E,\:F,\:W\right\}\ne R$ ❌ |

Final Key : $\large \left\{A,\:D,\:W\right\}$

##### Approach 1 : Result

Final Key : $\left\{A,\:D,\:W\right\}$

1. Minimal cover : $E:=F$
2. $R_1\left(A,\:B,\:C\right)$ $R_2\left(D,\:E,\:F\right)$
3. $R_3\left(A,\:D,\:W\right)$
4. No redundancy

#### Approach 2

##### Approach 2 - Step 1 : Initial Set-up

$R$ is not in 3rd normal form because it's not one-to-one : $A\:\rightarrow \:\:\left\{B,\:C\right\}$

Armstrong Axiom : $AD\:\rightarrow \:\left\{BE,\:BF,\:CE,\:CF\right\}$

$R_1\left(A,\:B,\:C\right)$ attributes that depend on candidate key $A$

$R_2\left(D,\:E,\:F\right)$

$R_3\left(A,\:D,\:W\right)$

|                             | A        | B        | C        | D        | E        | F        | W        |
| :-------------------------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- |
| $R_3\left(A,\:D,\:W\right)$ | $b_{31}$ | $b_{32}$ | $b_{33}$ | $b_{34}$ | $b_{35}$ | $b_{36}$ | $b_{37}$ |

Make $R_3$ attributes change to $\large a_{ij}$ from $\large b_{ij}$

|                             | A                      | B        | C        | D                      | E        | F        | W                      |
| :-------------------------- | ---------------------- | -------- | -------- | ---------------------- | -------- | -------- | ---------------------- |
| $R_3\left(A,\:D,\:W\right)$ | ~~- $b_{31}$ -~~ **a** | $b_{32}$ | $b_{33}$ | ~~- $b_{34}$ -~~ **a** | $b_{35}$ | $b_{36}$ | ~~- $b_{37}$ -~~ **a** |

|                             | A        | B        | C        | D        | E        | F        | W        |
| :-------------------------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- |
| $R_3\left(A,\:D,\:W\right)$ | $a_{31}$ | $b_{32}$ | $b_{33}$ | $a_{34}$ | $b_{35}$ | $b_{36}$ | $a_{37}$ |

##### Approach 2 - Step 2 : Follow the functional dependencies

$\large fd_1\::\:A\:\rightarrow \:\:\left\{B,\:C\right\}$

- $A\:\rightarrow \:\:\:\left\{B\right\}$ : $a_{31}\:==\:b_{32}$ ? `FALSE`, change $b_{32}$ to $a_{32}$
- $A\:\rightarrow \:\:\:\left\{C\right\}$ : $a_{31}\:==\:b_{33}$ ? `FALSE`, change $b_{33}$ to $a_{33}$

|                             | A        | B                      | C                      | D        | E        | F        | W        |
| :-------------------------- | -------- | ---------------------- | ---------------------- | -------- | -------- | -------- | -------- |
| $R_3\left(A,\:D,\:W\right)$ | $a_{31}$ | ~~- $b_{32}$ -~~ **a** | ~~- $b_{33}$ -~~ **a** | $a_{34}$ | $b_{35}$ | $b_{36}$ | $a_{37}$ |

$\large fd_2\::\:D\:\rightarrow \:\:\left\{E,\:F\right\}$

- $D\:\rightarrow \:\:\:\left\{E\right\}$ : $a_{34}\:==\:b_{35}$ ? `FALSE`, change $b_{35}$ to $a_{35}$
- $D\:\rightarrow \:\:\:\left\{F\right\}$ : $a_{34}\:==\:b_{36}$ ? `FALSE`, change $b_{36}$ to $a_{36}$

|                             | A        | B        | C        | D        | E                      | F                      | W        |
| :-------------------------- | -------- | -------- | -------- | -------- | ---------------------- | ---------------------- | -------- |
| $R_3\left(A,\:D,\:w\right)$ | $a_{31}$ | $a_{32}$ | $a_{33}$ | $a_{34}$ | ~~- $b_{35}$ -~~ **a** | ~~- $b_{36}$ -~~ **a** | $a_{37}$ |

##### Approach 2 - Step 3 : Check rows

> $\large R_3\left(A,\:D,\:W\right)$ is `lossless`

|                             | A        | B        | C        | D        | E        | F        | W        |
| :-------------------------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- |
| $R_3\left(A,\:D,\:W\right)$ | $a_{31}$ | $a_{32}$ | $a_{33}$ | $a_{34}$ | $a_{35}$ | $a_{36}$ | $a_{37}$ |

### Question 3

Given $R\left(x,\:y,\:c,\:z,\:e,\:f,\:w\right)$. There are two keys: $\left(x,\:y\right)$ and $z$.
Given the following functional dependency: $F=\left\{\left\{x,y\right\}\rightarrow \left\{c,\:z,\:e,\:f,\:w\right\},\:z\:\rightarrow \:\left\{x,\:y,\:c,\:e,\:f,\:w\right\},\:f\:\rightarrow \:x\right\}$.

Decompose $R$ into `BCNF`.

### Question 3 - My Solution

$R\left(x,\:y,\:c,\:z,\:e,\:f,\:w\right)$

Keys: $\left(x,\:y\right)$, $z$

$FD_1=\left\{x,\:y\right\}\rightarrow \left\{c,\:z,\:e,\:f,\:w\right\}$

$FD_2\:=\:z\:\rightarrow \:\left\{x,\:y,\:c,\:e,\:f,\:w\right\}$

$FD_3\:=\:f\:\rightarrow \:x$

#### Question 3 - step 1

$D\::=\:R$

#### Question 3 - step 2

$R_1:R-\left\{x\right\}=\left\{y,\:c,\:z,\:e,\:f,\:w\right\}$

$R_2\::\:\left\{f\right\}\:\cup \left\{x\right\}=\left\{f,\:x\right\}$

- $FD_3\:=\:f\:\rightarrow \:x$

#### Question 3 - Result

$\Large D=\left\{R_1\left(y,\:c,\:z,\:e,\:f,\:w\right),\:R_2\left(f,\:x\right)\right\}$
