#!/usr/bin/env perl


my $head=<>;
chomp $head;
my ($hname,$hdec,$hurl)= split /\t/,$head;
my @rest=<>;
my ($max_name,$max_dec,$max_url)=(0,0,0);
foreach(@rest)
{
    chomp;
    my ($name,$dec,$url)=split /\t/, $_;
    $max_name = length($name) if (length($name) > $max_name);
    $max_dec = length($dec) if (length($dec) > $max_dec);
    $max_url = length($url) if (length($url) > $max_url);
}

print "=" x $max_name . " " . "=" x $max_dec . " " . "=" x $max_url . "\n";
$hname .= " " x ($max_name-length($hname)) ;
$hdec .= " " x ($max_dec-length($hdec)) ;
$hurl .= " " x ($max_nurl-length($hurl)) ;
print $hname." ".$hdec." ".$hurl."\n";
print "=" x $max_name . " " . "=" x $max_dec . " " . "=" x $max_url . "\n";

foreach(@rest)
{
    chomp;
	my ($name,$dec,$url)=split /\t/, $_;
	$name .= " " x ($max_name-length($name)) ;
	$dec .= " " x ($max_dec-length($dec)) ;
	$url .= " " x ($max_nurl-length($url)) ;
	print $name." ".$dec." ".$url."\n";
}

print "=" x $max_name . " " . "=" x $max_dec . " " . "=" x $max_url . "\n";