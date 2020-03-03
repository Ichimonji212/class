#!/usr/bin/perl -w
#$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC';
#print $DNA;

#!/usr/bin/perl -w
#$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC';
#$DNA2 = 'ATAGTGCCGTGAGAGTGATGTAGTA';
#print "Here are the original two DNA fragments:\n\n";
#print $DNA, "\n";
#print $DNA2, "\n\n";
#$DNA3 = "$DNA$DNA2";
#print "Here is the concatenation of the first two fragments (version 1):\t";
#print $DNA3, "\n\n";

#!/usr/bin/perl -w
$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC';
print "Here is the starting DNA:\n\n";
print "$DNA\n\n";
$RNA = $DNA;
$RNA =~ s\T\U\g;
print "Here is the result of transcribing the DNA to RNA:\n\n";
print "$RNA\n";

#!/usr/local/binperl -w
