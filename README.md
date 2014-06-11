# Code Retreat Tools

A set of scripts and tools for jumping into a Code Retreat using PHP, Ruby and node.js quickly.


## Setup

Before the retreat:

* Cone this repo: `git clone git@github.com:loadsys/code-retreat-tools.git ; cd code-retreat-tools`

* Run `./check.sh` to make sure you have the necessary programming languages and unit testing tools installed.

* Install any missing interpreters or unit testing frameworks using [MacPorts](http://www.macports.org/), [Homebrew](http://brew.sh/) or whatever else is appropriate.

* Then check the following language-specific READMEs for additional install steps:

	* [php](php/README.md)

	* [ruby](ruby/README.md)

	* [node](node/README.md)


## Code Retreat Homework

* Familiarize yourself with the rules to [Conway's Game of Life](http://en.wikipedia.org/wiki/Conway's_Game_of_Life).

	* The "rules" we are concerned with are such (taken from [here](http://coderetreat.org/gol)):

		The universe of the Game of Life is an infinite two-dimensional orthogonal grid of square cells, each of which is in one of two possible states, live or dead. Every cell interacts with its eight neighbors, which are the cells that are directly horizontally, vertically, or diagonally adjacent. At each step in time, the following transitions occur:

		* Any live cell with fewer than two live neighbours dies, as if caused by underpopulation.
		* Any live cell with more than three live neighbours dies, as if by overcrowding.
		* Any live cell with two or three live neighbours lives on to the next generation.
		* Any dead cell with exactly three live neighbours becomes a live cell.

		The initial pattern constitutes the seed of the system. The first generation is created by applying the above rules simultaneously to every cell in the seed. Births and deaths happen simultaneously, and the discrete moment at which this happens is sometimes called a tick (in other words, each generation is a pure function of the one before). The rules continue to be applied repeatedly to create further generations.

* There's a fairly short overview of [the structure of a code retreat](http://coderetreat.org/facilitating/structure-of-a-coderetreat) that's handy to know as well. The basic idea is this:

	* The retreat consists of a number of repeated 45 min. "sessions" with a new set of constraints for each session.

	* The _host_ provides the location and catered food.

	* A _facilitator_ guides the group through the retreat.

	* All sessions consist of pair programming: two people sharing a single computer working together.

	* Test Driven Development is strongly encouraged.
	
	* Pairs swap/mix-up after every session.
	
	* **No code is to be preserved!** At the end of each session, all artifacts are permanently deleted.


== Usage

During the retreat, you can use this local repo as a base of operations.

* Run `git reset --hard HEAD` to wipe any changes from the last session.

* `cd` into the language folder you are going to use for your next session.

* Create new source files in the `lib/` folder and new test files in the `test/` or `spec/ folder.

* The README.md file in the sub-directory will explain how to start a test-runner in your Terminal.

