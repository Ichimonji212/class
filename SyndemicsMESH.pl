use LWP::Simple;

#query
$gi_list ='D000076603,D000069';

#url
$base = 'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/';
$url = $base . "efetch.fcgi?db=MeshHeading&id=$gi_list&rettype=acc";

#post the URL query to NCBI
$output = get($url);

#show the output in the screen
print "$output";
