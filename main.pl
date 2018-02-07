use strict;
use warnings;
use diagnostics;

use feature 'say';
use feature 'switch';

#program to find doi from a text file
say "This program will find doi string from a text file.\n\n";

#code
my $string = "Abstract [This corrects the article DOI: 10.1371/journal.pone.0163238.].
Erratum for Consensus Analysis of Whole Transcriptome Profiles from Two Breast Cancer
Patient Cohorts Reveals Long Non-Coding RNAs Associated with Intrinsic
Subtype and the Tumour Microenvironment. [PLoS One. 2016]\n";

say $string;

while ( $string =~ /(\w*[aeiou]{2}\w*)/g ) {
  say "$1";
}
