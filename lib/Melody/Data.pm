package Melody::Data;

use strict;
use warnings;

use base 'DBIx::Class::Schema';

__PACKAGE__->load_classes;

=head1 NAME

Melody::Data - Melody-Data is an easy to use API for accessing OpenMelody
and MovableType CMS data using DBIx::Class.

=head1 VERSION

Version 0.001

=cut

our $VERSION = '0.001';

=head1 SYNOPSIS

Nothing special, simply a means to access MovableType or OpenMelody data
from outside using DBIx::Class.

    use Melody::Data;
    my $md = Melody::Data->new('dbi:mysql:mtdb', 'root');
    my $blog = $md->blog(1);
    my @assets = $blog->assets;
    my @authors = $blog->authors;

=head2 Currently Configured

This module is a work in progress, this section of the documentation
describes which OpenMelody/MovableType DBIx::Class classes have been
configured with relationships.

currently configured B<classes>

=over 3

=item L<Blog|Melody::Data::Blog>, L<Asset|Melody::Data::Asset>,
L<Association|Melody::Data::Association>, L<Author|Melody::Data::Author>,
L<Category|Melody::Data::Category>, L<Comment|Melody::Data::Comment>,
L<Entry|Melody::Data::Entry>, L<Placement|Melody::Data::Placement>,
L<ObjectAsset|Melody::Data::ObjectAsset>

=back

=head1 METHODS

=head2 new

I<the `new` method is used to instantiate a new Melody::Data object.>

new B<arguments>

=over 3

=item L<connection_string|/"@connection_string">

=back

new B<usage and syntax>

    Melody::Data->new(@connection_string);
    
    takes 1 argument
        1st argument            - required
            @connection_string  - DBIx::Class compatible connection string
            
    example:
    my $md = Melody::Data->new('dbi:mysql:mtdb', 'root');
    my $blog = $md->blog(1);
    my @assets = $blog->search_related('assets')->all;

=cut

sub new {
    my $class       = shift;
    my @connection  = @_;
    die 'No connection string found' if @connection < 1;
    return $class->connect(@connection);
}

=head2 blog

I<the `blog` method is used to return the resultset of the specified blog
by name or id.>

blog B<arguments>

=over 3

=item L<blog_ident|/"$blog_ident">

=back

blog B<usage and syntax>

    my $blog = $md->blog($blog_ident);
    
    takes 1 argument
        1st argument  - required
            $blog_ident - blog name or id
            
    example:
    This method is use to return the resultset of the target blog.
    my $blog = $md->blog(1);
    print $blog->blog_name;

=cut

sub blog {
    my ($self, $identifier) = @_;
    my $id;
    die 'No blog identifier defined.' if !$identifier;
    
    if ($identifier =~ /^\d+$/) {
        my $rs = $self->resultset('Blog')->search({
            blog_id => $identifier
        })->next;
        return $rs if $rs->blog_id;
    }
    else {
        my @rs = $self->resultset('Blog')->all;
        foreach my $r (@rs) {
            if ($r->blog_name eq $identifier) {
                return $r if $r->blog_id;
            }
        }
    }
    return undef;
}

=head1 VARIABLE TABLE

=head2 @connection_string

    # The @connection_string array is a compatible DBIx::Class connection
    # string.
    my @connection_string = ($dbi_dsn, $user, $pass, \%dbi_params);

=head2 $blog_ident

    # The blogs name (case-insensative) or id (found by examining the url
    # once logged into the control panel of MovableType or Melody).
    my $blog_ident = 1;
    my $blog_ident = 'my new blog';

=head1 AUTHOR

Al Newkirk, C<< <awncorp at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-melody-data at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Melody-Data>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Melody::Data


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Melody-Data>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Melody-Data>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Melody-Data>

=item * Search CPAN

L<http://search.cpan.org/dist/Melody-Data/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 COPYRIGHT & LICENSE

Copyright 2009 Al Newkirk, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1; # End of Melody::Data