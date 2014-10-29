use URI;

my $url;
for my $e (keys %ENV) {
    if ($e eq 'DATABASE_URL') {
        $url = $ENV{$e};
    }
}
exit unless $url;

my $uri = URI->new($url);

my $dbname = substr($uri->path, 1);
my ($user_pass, $host_port) = split /@/, $uri->authority;
my ($user, $pass) = split /:/, $user_pass;
my ($host, $port) = split /:/, $host_port;

+{
    'DBI' => [
        "dbi:Pg:dbname=$dbname;host=$host;port=$port", $user, $pass,
    ],
};

