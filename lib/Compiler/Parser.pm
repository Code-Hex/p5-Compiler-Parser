package Compiler::Parser;
use 5.012003;
use strict;
use warnings;
use Compiler::Parser::Node;
use Compiler::Parser::Node::Branch;
use Compiler::Parser::Node::Block;
use Compiler::Parser::Node::Module;
use Compiler::Parser::Node::Package;
use Compiler::Parser::Node::RegPrefix;
use Compiler::Parser::Node::ForStmt;
use Compiler::Parser::Node::ForeachStmt;
use Compiler::Parser::Node::Function;
use Compiler::Parser::Node::FunctionCall;
use Compiler::Parser::Node::IfStmt;
use Compiler::Parser::Node::ElseStmt;
use Compiler::Parser::Node::SingleTermOperator;
use Compiler::Parser::Node::Array;
use Compiler::Parser::Node::Hash;
use Compiler::Parser::Node::Leaf;
use Compiler::Parser::Node::List;
use Compiler::Parser::Node::ArrayRef;
use Compiler::Parser::Node::HashRef;
use Compiler::Parser::Node::Dereference;
use Compiler::Parser::Node::Return;

require Exporter;

our @ISA = qw(Exporter);
our %EXPORT_TAGS = ( 'all' => [ qw() ] );
our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );
our @EXPORT = qw();
our $VERSION = '0.01';
require XSLoader;
XSLoader::load('Compiler::Parser', $VERSION);

1;
__END__

=head1 NAME

Compiler::Parser - Create Abstract Syntax Tree for Perl5

=head1 SYNOPSIS

    use Compiler::Lexer;
    use Compiler::Parser;

    my $filename = $ARGV[0];
    open(my $fh, "<", $filename) or die("$filename is not found.");
    my $script = do { local $/; <$fh> };
    my $lexer = Compiler::Lexer->new($filename);
    my $tokens = $lexer->tokenize($script);
    my $parser = Compiler::Parser->new();
    my $ast = $parser->parse($$tokens);
    Compiler::Parser::AST::Renderer->new->render($ast);

=head1 DESCRIPTION

Compiler::Parser creates abstract syntax tree for perl5.

=head1 SEE ALSO

[Compiler::Lexer](http://search.cpan.org/perldoc?Compiler::Lexer)

=head1 AUTHOR

Masaaki Goshima (goccy) <goccy54@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright (C) Masaaki Goshima (goccy).

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
