use strict;
use warnings;
use diagnostics;

use feature 'say';

#program to find doi from a text file
say "This program will find doi string from text files contained within a folder.\n\n";
say "Please directly enter the absolute path to the directory containing text files to source."

#gather file names from the source folder
my $source = "";
my @list = glob($source);
my $size = @list;

#prints out the number of files
say "Total file(s) found: $size"."\n\n";

#reads through each file to find the DOI
foreach (@list) {
  my $file_name = substr($_, 0);
  my $file_name2 = substr($_, 33);

  if (open(my $fh, $file_name)) {
    while (my $row = <$fh>) {
      my $string = $row;

      if ( $string =~ /\b(10[.][0-9]{4,}(?:[.][0-9]+)*\/(?:(?!["&\'])\S)+)\b/i ) {
        say "DOI for "."$file_name2"." is: "."$1";
      } else {
        #This line is being run multiple times?
        #say "No DOI found for '$file_name'";
      }
    }

  } else {
    warn "Could not open '$file_name' $!";
  }
}
