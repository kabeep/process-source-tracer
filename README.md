**Note: This document is partially generated by ChatGPT.**

# Process Source Tracer

English | [简体中文](./README-zh_CN.md)

This project is a utility tool for recursively tracing the creators of a process. By tracking the parent process chain, it helps you identify the creators of a process and their hierarchical relationships, allowing you to determine if a process is friendly and meets your expectations.

## Purpose

This utility can be useful in the following scenarios:

- Finding the origin of a process and understanding who created it.
- Tracing the hierarchical chain of process creators.
- Evaluating whether a process is friendly and aligns with your expectations.

## How to Use

To use this tool in the `cmd`:

1. Clone the project to your local machine or download the project as a zip file.
2. Open `cmd` and navigate to the directory where the project is located.
3. Run the `tracepid.cmd` command and provide the PID (Process ID) of the target process as a parameter. For example: `tracepid.cmd <PID>`.
4. The tool will recursively trace the creators of the target process and display the process information along the creation chain.
5. Based on the output information, evaluate whether the process is friendly and meets your expectations.

## Usage

```shell
# Display a list of processes with detailed information
tasklist /V

# Perform a query for a PID that raises doubts
tracepid 10101
```



Please note that this tool is implemented using batch scripting, which may have certain limitations. In some cases, more advanced system tools and programming languages may be required for more detailed and accurate analysis.
