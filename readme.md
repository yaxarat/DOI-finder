# DOI Finder
![DOI](image.png)


## Purpose
This is a simple script written to assist with the VCU Natural Language Processing Lab’s research.
The purpose of this script is to read through text files auto generated from PDF to text conversion and to locate each PDF’s DOI, or Digital Object Identifier.

## What is DOI?
A DOI, or Digital Object Identifier, is a string of numbers, letters and symbols used to permanently identify an article or document and link to it on the web. A DOI will help your reader easily locate a document from your citation. Think of it like a Social Security number for the article you’re citing — it will always refer to that article, and only that one.

## How to run the script
Clone this repo and run the main perl file with `perl main.pl`. Once prompted, directly enter the absolute path to the directory containing text files to source.
The script will then prompt the number of files as well as DOI for each corresponding file. It will indicate each files that DOI could not be located.