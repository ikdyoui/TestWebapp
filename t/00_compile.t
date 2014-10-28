use strict;
use warnings;
use Test::More;


use TestWebapp;
use TestWebapp::Web;
use TestWebapp::Web::Dispatcher;
use TestWebapp::Web::C::Root;
use TestWebapp::Web::C::Account;
use TestWebapp::Web::ViewFunctions;
use TestWebapp::Web::View;
use TestWebapp::Admin;
use TestWebapp::Admin::Dispatcher;
use TestWebapp::Admin::C::Root;
use TestWebapp::Admin::ViewFunctions;
use TestWebapp::Admin::View;


pass "All modules can load.";

done_testing;
