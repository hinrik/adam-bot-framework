package oses;
# ABSTRACT: A shortcut in the fashion of oose.pm
# Dist::Zilla: +PodWeaver
use strict;
use warnings;

BEGIN {
    my $package;
    sub import { $package = $_[1] || 'Bot' }
    use Filter::Simple sub { s/^/package $package;\nuse Moses;\n/; }
}

1;
__END__

=head1 SYNOPSIS

perl -Ilib -Moses=T -MNet::Twitter -e'event irc_public=>sub {
Net::Twitter->new(username=>$ARGV[0],password=>$ARGV[1])->update($_[ARG2])
};T->run'
  
