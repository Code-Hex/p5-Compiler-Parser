use strict;
use warnings;
use Test::More;
use Compiler::Lexer;
use Compiler::Parser;

my $tokens = Compiler::Lexer->new('-')->tokenize('');
my $ast = Compiler::Parser->new->parse($tokens);
ok(not defined $ast);
done_testing;
