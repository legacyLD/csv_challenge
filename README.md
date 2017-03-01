### Approaching a Take-Home Challenge

1. Read the prompt carefully. Note any questions for your recruiter and anything you don't know how to do yet.

1. Ask questions to clarify the problem, if you need to.

1. Plan your general strategy for solving the problem.  Prioritize which parts seem most important.

1. Create code 'stubs' or 'skeletons' that capture your plan.

1. Quickly build key parts you already know how to build.  

1. Research and build all other parts in order of what seems easiest or most important.



### Key Strategies

1. Document your thinking. This could include a simple readme that has your planning notes and links to resources you found, 'stubs' or 'skeleton code' that shows the structure you are building out, comments, or tests.  This includes "next steps" - save time at the end of the timeframe to document where you left off and how you would complete the problem.

1. Consider best practices for code structure. Object-oriented code is considered a sign of a more mature developer, compared to functional code. Code that doesn't use functions is probably not DRY and generally less maintainable.

1. Consider best practices for software development workflow.  Track your work with version control like git.  Check with your recruiter before you publish information about a company's take-home challenge on GitHub or similar sites, though.  

1. Follow submission instructions. Make sure you understand the format the company wants your submission in and when they want it by (time and day).


### Sample Rubric

(Sample Rubric)[https://docs.google.com/document/d/1NYr6nu0rL89AKTL_43gEQEg2oydSp2ezva3RhGvY8Ws/edit?usp=sharing]

\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
#CSV Challenge

Write a program that assembles a single set of records by parsing data from 3 different file formats and then displays these records in the Terminal, sorted in 3 different ways.

###Guidelines

We will use this exercise to evaluate your skills as a developer. The qualities that we pay special attention to are:

- Simplicity/elegance of design
- Adherence to good software engineering principles
- Maintainability (clean, easy to understand code)
- Effective use of the standard library
- Use of unit tests

###Input Data

A record consists of the following 5 fields: last name, first name, gender, date of birth and favorite color. You will be given 3 files, each containing records stored in a different format (`sample/comma.txt`, `sample/pipe.txt`, `sample/space.txt`).

* The pipe-delimited file lists each record as follows:  
  `lastName | firstName | middleInitial | gender | favoriteColor | dateOfBirth`
* The comma-delimited (csv) file looks like this:  
  `lastName, firstName, gender, favoriteColor, dateOfBirth`
* The space-delimited file looks like this:  
  `lastName firstName middleInitial gender dateOfBirth favoriteColor`

You may assume that the delimiters (commas, pipes and spaces) do not appear anywhere in the data values themselves. Write a Ruby program to read in records from these files and combine them into a single set of records.

###Display Requirements
* Create 3 different views of the recordset and display them in Terminal output (see `sample/expected_output.txt`):

    - Output 1 – sorted by gender (females before males) then by last name ascending.
    - Output 2 – sorted by birth date, ascending.
    - Output 3 – sorted by last name, descending.

* Ensure that fields are displayed in the following order: last name, first name, gender, date of birth, favorite color.
* Display dates in the format MM/DD/YYYY.


### Class Notes

1. Read prompt carefully, noting research needs
2. Ask questions to clarify problem, if needed
3. Plan general structure/strategy and priorities
4. Quickly build key parts you know
5. Research and build parts you didn't know, in order of importance (research most important parts of code first)

### Notes

1. What would you ask your recruiter?

- what are the deliverables?
- how would you like this delivered?
- what language?

2. This challenge can be done in Ruby or in JavaScript with Node.js. Solutions here are in Ruby.  
3. Think about how you can break the problem down into smaller parts.
  1. Pull in files as arguments
  2. Parse three kinds of files into same format
  3.

  - write function
  	- if  pipe file do this
  	- if css file do this
  	- if
4. Think about how you can make your solution adhere to best practices.  
5. Research portions of the task that are unfamiliar.  You might want to use search terms like "file io" and/or "csv".
  - http://csv.adaltas.com/parse/examples/
  - https://nodejs.org/api/fs.html
  - https://developer.mozilla.org/en-US/Add-ons/Code_snippets/File_I_O



















  -
