# LaTeX Template for University of Kurdistan Hewlêr - Undergraduate Theses/Dissertations

This repository contains an unofficial LaTeX template for preparing undergraduate theses/dissertations at the University of Kurdistan Hewlêr's Department of Computer Science and Engineering. The template is based on the official guidelines from AY2022-2023 provided by the university and includes all the necessary formatting and styling details to ensure that your work meets the required standards.

## Getting Started

To use the template, follow these steps:

1. Download the files from this repository by clicking the Clone or download button and selecting Download ZIP.
2. Unzip the downloaded file to extract the template files.
3. Open the file thesis.tex in a LaTeX editor (such as Overleaf, TeXstudio, or TeXnicCenter).
4. Follow the instructions in the comments to customize the template with your own information and content.
5. Use the sample.tex file as a reference to see how to structure and format your work.
6. When you're ready, compile your final document to generate a PDF of your work.


## Prerequisites

To use this template, you will need a LaTeX distribution installed on your computer or using an online editor like Overleaf. We recommend using Overleaf, or one of the following editors, MiKTeX on Windows, MacTeX on Mac, or TeX Live on Linux.

In addition, you will need to install the following packages:

`package_name`: for using blank

If you are using a LaTeX editor, these packages should be automatically installed when you compile the document. If you are using the command-line, you can install them by running the following command:

    latexmk -pdf -pvc -use-make thesis.tex


## Customization

The template can be customized with your own information and content by modifying the following fields:

-   `\title{}`: the title of your work
-   `\author{}`: your name
-   `\supervisor{}`: the name of your supervisor
-   `\department{}`: the name of your department
-   `\university{}`: the name of your university
-   `\date{}`: the submission date of your work

You can also add your own chapters, sections, and subsections by using the `\chapter{}`, `\section{}`, and `\subsection{}` commands, respectively.


## Sample Document

The `sample.tex` file included in this repository demonstrates how to use the template and includes examples of common elements such as equations, figures, tables, and images.


## Bibliography

To manage your bibliography, use the `\cite{}` command to cite sources within the text, and use the `\printbibliography` command to print the bibliography at the end of your work.

The template is set up to use the `biblatex` package, which allows you to use BibTeX (.bib) files to store your references. To use this feature, create a `.bib` file and include it in the template using the `\addbibresource{}` command. Then, use the `\cite{}` command to cite sources from the `.bib` file.


## Acknowledgments

To include an acknowledgments section, use the `\acknowledgments` command before the bibliography.


## Contact

If you have any questions or run into any issues while using the template, please don't hesitate to contact the maintainers or open an issue on the repository. We'll be happy to help!
