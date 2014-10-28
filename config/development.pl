# use File::Spec;
# use File::Basename qw(dirname);
# my $basedir = File::Spec->rel2abs(File::Spec->catdir(dirname(__FILE__), '..'));
# my $dbpath = File::Spec->catfile($basedir, 'db', 'development.db');
# +{
#     'DBI' => [
#         "dbi:SQLite:dbname=$dbpath", '', '',
#         +{
#             sqlite_unicode => 1,
#         }
#     ],
# };
my $dbname = 'testwebapp_dev';
my $host = '127.0.0.1';
my $port = '5432';
my $user = 'postgres';
my $pass = 'postgres';
+{
    'DBI' => [
        "dbi:Pg:dbname=$dbname;host=$host;port=$port", $user, $pass,
    ],
};
