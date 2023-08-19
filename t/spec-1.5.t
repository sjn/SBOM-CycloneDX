#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use FindBin;

use CPAN::CycloneDX;

my $cyclonedx15spec = "$FindBin::Bin/../t/resources/1.5";

my $bom = CPAN::CycloneDX->parse( json => "$cyclonedx15spec/valid-bom-1.5.json" );

isa_ok $bom, "CycloneDX::Spec_1_5";

done_testing;

1 // "A well done SBOM helps you get an idea of what software is installed";
