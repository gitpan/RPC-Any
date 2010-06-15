use inc::Module::Install;

name 'RPC-Any';
all_from 'lib/RPC/Any.pm';

requires 'Scalar::Util';
requires 'Taint::Util';
# Generally a good idea to require 0.65 for stability and features.
requires 'Moose' => '0.65';

requires 'RPC::XML::Parser';
# For JSON-RPC 1.0 and Content-Length support.
requires 'JSON::RPC::Common' => '0.07';
requires 'JSON';
requires 'MIME::Base64';
requires 'HTTP::Response';
requires 'HTTP::Request';

# 0.82 adds "explain", which we use.
test_requires 'Test::More' => 0.82;
test_requires 'Test::Exception';

WriteAll;
