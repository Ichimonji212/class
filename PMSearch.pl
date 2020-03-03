#Thsi script gets the pubmed abstracts from a given term
use LWP::Simple;

#search term to find
$search_term = "acculturation syndemic";

#replace space with +
$search_term =~ s/\s/+/g;

#print $search_term;

#maximum number of results to retrieve
$retmax = 10;

#base url
$base = 'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/';

#set the db to search
$db_name = 'pmc';

#generate teh query url
$url = $base . "esearch.fcgi?db=$db_name&retmax=$retmax&term=$search_term";

#print $url;

#submit the search and retrieve th XML based results
$esearch_result = get($url);

#print "$search_result";

#esxtract aper IDs using match regex . anything * anytime, globally
@ids = ($esearch_result =~ m|.*<Id>(.*)</Id>.*|g);

#print join(',',@ids);

#delete old abstract txt file
unlink "abstracts.txt";

#loop through all the ids
foreach $id (@ids)
    {
    print "$id\n";
    #get abstract for each pubmed id
    $fetchurl = $base . "efetch.fcgi?db=pubmed&id=$id&retmode=text&rettype=abstract";
    #print get($fetchurl);
    #open a file for appending the putput
    open(OUTFILE,'>>','abstracts.txt');
    #get teh results and print the filehandle
    print OUTFILE get($fetchurl);
    sleep 1;
    #close file
    close OUTFILE;
    }
