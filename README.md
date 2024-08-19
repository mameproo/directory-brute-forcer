# Directory Brute Forcer

A simple Bash script for brute forcing directories on a web server. This tool helps in discovering hidden directories by testing a list of potential directory names.

## Features

- Brute force directories on a target URL.
- Customizable wordlist for directory names.
- Provides clear output of found and not found directories.

## Prerequisites

- Bash (Unix/Linux)
- `curl` command-line tool (typically pre-installed on most Unix/Linux systems)

## Installation

1. **Clone the Repository**

   To get started, clone this repository to your local machine:

   ```bash
   git clone https://github.com/username/directory-brute-forcer.git

cd directory-brute-forcer

chmod +x dir_bruteforcer.sh

Example 
./dir_bruteforcer.sh http://example.com wordlist.txt
