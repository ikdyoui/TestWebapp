use URI;

my $url;
for my $e (keys %ENV) {
    if ($e eq 'DATABASE_URL') {
        $url = $e;
    }
}
exit unless $url;

my $uri = URI->new($url);

my $dbname = substr($uri->path, 1);
my $host = $uri->host;
my $port = $uri->port;
my ($user, $pass) = split /:/, $uri->userinfo;

print "prod\n";
+{
    'DBI' => [
        "dbi:Pg:dbname=$dbname;host=$host;port=$port", $user, $pass,
    ],
};
