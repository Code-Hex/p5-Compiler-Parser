package Compiler::Parser::Node::RegPrefix;
use strict;
use warnings;
use base 'Compiler::Parser::Node';

sub expr { shift->{expr} }
sub option { shift->{option} }

1;
