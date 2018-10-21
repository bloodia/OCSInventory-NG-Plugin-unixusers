################################################################################
## Copyleft Yuta Akama 2018
## Web : https://www.bloodia.net/
## 
## This code is open source and may be copied and modified as long as the source
## code is always made freely available.
## Please refer to the General Public Licence http://www.gnu.org/ or Licence.txt
################################################################################
 
package Ocsinventory::Agent::Modules::Unixusers;

sub new {

   my $name="unixusers";   # Name of the module

   my (undef,$context) = @_;
   my $self = {};

   #Create a special logger for the module
   $self->{logger} = new Ocsinventory::Logger ({
            config => $context->{config}
   });

   $self->{logger}->{header}="[$name]";

   $self->{context}=$context;

   $self->{structure}= {
                        name => $name,
                        start_handler => undef,    #or undef if don't use this hook
                        prolog_writer => undef,    #or undef if don't use this hook
                        prolog_reader => undef,    #or undef if don't use this hook
                        inventory_handler => $name."_inventory_handler",    #or undef if don't use this hook
                        end_handler => undef    #or undef if don't use this hook
   };

   bless $self;
}

######### Hook methods ############

sub unixusers_inventory_handler {

   my $self = shift;
   my $logger = $self->{logger};

   my $common = $self->{context}->{common};

   #I add the treatments for my new killer feature
   $logger->debug("Yeah you are in unixusers_inventory_handler :)");

   my @unixusers = `cut -d: -f1 /etc/passwd`;
 
   # Each unix users is read and analyzed
   for (@unixusers) {
     push @{$common->{xmltags}->{UNIXUSERS}},
     {
       NAME => [$_],
     };
   }
}

1;
