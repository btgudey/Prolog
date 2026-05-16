_# TASK 3 – PROLOG: FAMILY TREE LOGIC PROGRAM

This task demonstrates the use of Prolog for logic programming by building a family tree system. It includes installation, basic testing, and creation of a custom family relationship model using facts and rules.

---

# (a) Download and Configuration of Prolog

The Prolog system used is SWI-Prolog.

## Installation Steps

1. Download SWI-Prolog from:
   https://www.swi-prolog.org

2. Choose the appropriate version for your operating system (Windows/Linux/Mac).

3. Install using default settings.

4. After installation, open Command Prompt or Terminal and run:

```bash
swipl
Verification

If installed correctly, Prolog will start and display:

Welcome to SWI-Prolog

To exit Prolog:

halt.
(b) Running Basic Prolog Programs
Objective

To understand how facts and rules work in Prolog using simple family relationships.

Key Concepts
Facts: Statements assumed to be true (e.g., male(john).)
Rules: Logical relationships derived from facts
Queries: Questions asked to the Prolog system
Example Program

A simple family program defines:

males and females
parent relationships
rules for father, mother, and grandparent
Example Queries
father(X, peter).
mother(X, peter).
grandparent(X, mark).
(c) Custom Family Tree Implementation
Objective

To build a complete family tree system that includes:

Parents
Children
Grandparents
Grandchildren
Siblings
Cousins
Uncles
Aunts
Approach

The program is divided into:

1. Facts

These define:

Gender (male/female)
Parent relationships

Example:

male(john).
parent(john, peter).
2. Rules

These define logical relationships:

Father: male parent
Mother: female parent
Child: reverse of parent
Grandparent: parent of parent
Sibling: share at least one parent
Cousin: children of siblings
Uncle/Aunt: siblings of a parent
Example Queries
father(john, peter).
mother(mary, peter).
grandparent(john, mark).
sibling(peter, linda).
cousin(mark, anne).
uncle(peter, mark).
aunt(linda, mark).
Expected Output

Prolog evaluates queries and returns:

true if relationship exists
variable bindings (e.g., X = john)
false if relationship does not exist
Applications in Artificial Intelligence

This system demonstrates core AI concepts in:

Knowledge representation
Logical reasoning
Rule-based inference systems
Expert systems
Files Included
family.pl → Prolog source code containing facts and rules
How to Run
Open SWI-Prolog:
swipl
Load file:
consult('family.pl').
Run queries:
father(X, peter).
grandparent(X, mark)._
