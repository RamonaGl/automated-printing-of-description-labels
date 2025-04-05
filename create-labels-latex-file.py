# implemented by RamonaGl

import os
import sys
import shutil

# given path to directory in which the text files are saved
folder_path = sys.argv[1]

# copy the style file for the information labels to the given directory
shutil.copy2('information-labels.cls', folder_path + '/information-labels.cls') 

# create the LaTeX file
latex_file_name = "information-labels.tex"
latex_file = open(os.path.join(folder_path, latex_file_name), 'w')

# setup LaTeX file
#latex_file.write(r'\documentclass{information-labels}' + '\n' + r'\usepackage{multicol}' + '\n' + r'\setmaincolor{0}{62}{84}' + '\n' + r'\begin{document}' + '\n' + r'\begin{multicols}{2}' + '\n' )
latex_file.write(r'''\documentclass{information-labels}
\usepackage{multicol}
\setmaincolor{0}{65}{144}
\begin{document}
\begin{multicols}{2}
\noindent''' + '\n')

# scan the directory for text files
for filename in os.listdir(folder_path):
    if filename.endswith('.txt'):
        # open and read the text file
        with open(os.path.join(folder_path, filename), 'r') as f:
            # read the first line as a heading
            header = f.readline().strip()
            # read the content of the file
            content = f.read()
        
        # convert the content to LaTeX format
        latex_content = content.replace('&', r'\&').replace('%', r'\%').replace('$', r'\$').replace('#', r'\#').replace('\n', r'\\'+ '\n')
        
        # write LaTeX code for a notepad sized frame and write the heading
        latex_code = r'\framebox[8cm]{ \parbox[t][7.5cm]{7.5cm}{' + '\n' + r'\heading{' + header + r'}'+ '\n' + latex_content + r'}}'
        
        # append the LaTeX code to the LaTeX file
        latex_file.write(latex_code + '\n')

# setup LaTeX file
latex_file.write(r''' 
\end{multicols}
\end{document}''')
