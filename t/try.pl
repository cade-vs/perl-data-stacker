#!/usr/bin/perl
use strict;
use lib '.', '../lib';
use Data::Dumper;
use Data::Stacker;
use utf8;

my $hr = {
      'TESTER2' => {
                   'RANDOM' => {
                               'FIELDS' => [ 'CTIME', 'SIZE' ],
                               'UNIQUE' => 1,
                               },
                   'KEY' =>    {
                               'FIELDS' => [ 'DES', 'FUNC' ],
                               'NAME ИМЕ'   => 'TEST2 Проба',
                               '_ORDER' => "5\n5"
                               }
                   }
      };

print Dumper( $hr );

my $str  = stack_data( $hr  );

print "\n------------\n${str}------------\n";

my $nhr = unstack_data( $str );

print Dumper( $nhr );
