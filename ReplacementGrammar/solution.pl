my @lines = <>;
chomp(@lines);

my @rules;
my $text;

foreach (@lines) {
    if(/\|/){
        push(@rules,$_);
    }
    elsif(/\S+/){
        $text = $_;
    }
}

foreach (@rules) {
    ($s, $r) = m/(.*)\|(.*)/;
    $text =~ s/\Q$s\E/$r/g;
}

print $text;