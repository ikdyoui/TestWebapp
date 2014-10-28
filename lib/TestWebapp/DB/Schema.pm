package TestWebapp::DB::Schema;
use strict;
use warnings;
use Teng::Schema::Declare;
base_row_class 'TestWebapp::DB::Row';
table {
    name 'member';
    pk 'id';
    columns (
        {name => 'id', type => 4},
        {name => 'name', type => 12},
    );
};

table {
    name 'sessions';
    pk 'id';
    columns (
        {name => 'id', type => 1},
        {name => 'session_data', type => -1},
    );
};

1;
