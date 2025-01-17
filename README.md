# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code: insufficient error handling within `async`/`await` blocks.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a more robust solution.

## Problem
The original code attempts to fetch data from a remote API.  However, it only handles the HTTP status code; it doesn't gracefully handle exceptions that might occur during the network request itself (e.g., timeout, connection issues).  The `rethrow` is present but not fully utilized, leaving higher-level error handling unclear.

## Solution
The improved code in `bugSolution.dart` uses a `try-catch` block to handle various potential errors, including network exceptions.  More descriptive error messages are also included, aiding in debugging and user feedback.