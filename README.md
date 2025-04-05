# Python script for the automatic generation of a LaTeX file for handy information labels in notepad size.

Running create-labels-latex-file.py will automatically create a LaTeX file containing one label for each `.txt` file in a directory.

The script can be executed using `python3 create-labels-latex-file.py ./path-to-directory`.

The Python code first copies the `.cls` file required for styling into the specified directory. 
A new `.tex` file is then created. 
The directory is then automatically searched for `.txt` files, which are converted into the LaTeX code for creating a note and appended to the LaTeX file. 
The first line of the text file is interpreted as the heading for the note, the rest is written as content underneath. 
After successful execution of the Python script, a LaTeX file `information-labels.pdf` is found in the specified target directory.

The LaTeX file must now be compiled into the specified target directory in order to generate the PDF. 
This can be done either via the 'Build Project' button in the development environment or via the command line using `pdflatex information-labels.tex`.
