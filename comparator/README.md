# 2-Bit Comparator using Verilog

## Description

This project implements a **2-bit digital comparator** using Verilog HDL.

The comparator compares two 2-bit binary numbers, `A` and `B`, and produces three outputs:

* `A_greater_B` → A is greater than B
* `A_equal_B` → A is equal to B
* `A_less_B` → A is less than B

## Project Structure

```text
comparator/
│
├── comparator.v
├── comparator_tb.v
└── README.md
```

## Inputs

| Input    | Description   |
| -------- | ------------- |
| `A[1:0]` | 2-bit input A |
| `B[1:0]` | 2-bit input B |

## Outputs

| Output        | Description     |
| ------------- | --------------- |
| `A_greater_B` | HIGH when A > B |
| `A_equal_B`   | HIGH when A = B |
| `A_less_B`    | HIGH when A < B |

## Example

| A  | B  | A > B | A = B | A < B |
| -- | -- | ----: | ----: | ----: |
| 00 | 00 |     0 |     1 |     0 |
| 01 | 00 |     1 |     0 |     0 |
| 00 | 01 |     0 |     0 |     1 |
| 10 | 01 |     1 |     0 |     0 |
| 01 | 10 |     0 |     0 |     1 |
| 11 | 11 |     0 |     1 |     0 |

## Tools Used

* Verilog HDL
* Visual Studio Code
* Icarus Verilog
* GitHub

## How to Run in VS Code

Open the `comparator` folder in VS Code.

Compile the Verilog files:

```bash
iverilog -o comparator_sim comparator.v comparator_tb.v
```

Run the simulation:

```bash
vvp comparator_sim
```

## Expected Output

```text
 A  B | A>B  A=B  A<B
----------------------
00  00 |  0    1    0
01  00 |  1    0    0
00  01 |  0    0    1
10  01 |  1    0    0
01  10 |  0    0    1
11  11 |  0    1    0
```

## Objective

To understand the operation and Verilog implementation of a **2-bit digital comparator**.


