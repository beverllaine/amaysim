# amaysim
This is a test challenge.

### Pre-requisite dependecies
To install and run the application, you will need:
* Python - version 3.7
* Pip (the Python package management system) - latest version
* ChromeDriver (Selenium WebDriver tool used to control Chrome) - latest version or Firefox latest version

#### Note about Python 3.7
MacOS includes an older version of Python (the system version, usually Python 2.7).Don't use the system version; instead install Python 3.7 using [Homebrew](https://brew.sh/) to run the test automation suite.

### Steps to get the code and run the test:
1. Clone repo with HTTP or SSH
2. After cloning the repository locally, `cd amaysim`/
3. Use Pip to install Robot Framework and its dependencies.
    * command: $ pip install -r requirements.txt
4. Verify if Robot Framework was successfully installed.
   * command: $ robot --version
5. Run the test using robot command.
   * command: $ robot -d results/ -i create-mobile-plan testsuite/

### Report file

<img width="1505" alt="test log" src="https://github.com/beverllaine/amaysim/assets/78627345/bfb21760-3e8e-4e8a-bac5-fdf7a8937672">

