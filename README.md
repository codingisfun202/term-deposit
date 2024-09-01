# Term Deposit Calculator

## Features

This is simple term deposit calculator.

It takes the following inputs:

* Start deposit amount (e.g. \$10,000)
* Interest rate (e.g. 1.10%)
* Investment term (e.g. 3 years)
* Interest paid (monthly, quarterly, annually, at maturity)

And it calculate the final balance with the given inputs and the final balance will be rounded to the nearest whole number.

* Final balance (e.g. \$10,330 on the above inputs, interest paid at maturity)

## Prerequisites

- Ruby (version 3.1.4 or higher), to install ruby see this [doc](https://www.ruby-lang.org/en/documentation/installation/)
- Bundler (`gem install bundler`)
- Visual Studio Code ([VS Code](https://code.visualstudio.com/))

## Getting Started

1. **Clone the repository:**

   ```sh
   git clone https://github.com/codingisfun202/term-deposit.git
   cd term-deposit
   ```
2. How to run the app:

   ```bash
    chmod +x bin/calculator
    bin/calculator
   ```

   Then follow the prompts to enter the required inputs. The output will be the final balance based on the required inputs.
3. How to run tests

   Tests will be written using MiniTest, which is part of the Ruby standard library. A Rakefile is added to help running the tests.

   ```bash
   rake test
   ```

## Project Strucure

term-deposit/
├── bin/
│   └── calculator    # CLI script for running the application
├── lib/
│   └── term_deposit.rb        # Main application file containing the TermDeposit class
├── test/
│   └── term_deposit_test.rb # Tests for the TermDeposit class
├── Gemfile            # Gemfile specifying dependencies
├── Gemfile.lock       # Gemfile.lock specifying exact gem versions
├── Rakefile           # Rakefile for running tests
└── README.md          # This README file

## Design Decisions

The design of the application will be kept simple and focused on core functionality given the requirements and limit timeframe.

It uses object-oriented approach with clear separation of concerns between input handling, calculation logic, and output display and is executed via command line, user will be asked for some inputs interactively and gathered for calulation. Added some basic inputs validation before pass on for calculation.

For calculation:

* Compounded interest is used for monthly, quarterly, or annually.
* Simple interest is used if the interest is paid at maturity.

## Limitation and Possible Improvements

* UI improves :  This app is purely a command-line interface (CLI) tool , can be further improved with nicer UI.
* Error Handling:  This app currently only handle certain input type and can be expanded further.
* Calculation: Some parts of the calculation is hard coded logic and is less flexible.
