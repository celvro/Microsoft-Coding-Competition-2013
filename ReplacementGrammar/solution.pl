open(FILE,"rules.txt") or die $!;
open(OUTPUT,">output.txt") or die $!;
my @rules = <FILE>;

my $text = 'This is your sample input message. $$t contx$ns xxn123YZ *u((;(-p to let U test y123r solut*^.?U s(h(1(2(3(l(d( (u(s(e( ($(t( (t(o hxxlp y123rsxxlf. Z%, xxspxxc$xaaa whxxn thxxy xrxx lxyerxxd.????Rxxmxxmbxxr:?ZzZ. T$mxx?f@ somxx usxxlxxss #g#xrbxgxx?f@ txxst$ng. #YZosts xttxck xt niYZt!?((#()(#(( $$ l$kxx ^O^ut bu:-Oxxr xnd flu(;(-p. Not Infinite! Are U rxxxdy\? ~~ P(;(-p, th$s one was xxxsy! Nxx&t problxxm m$YZt bxx xxvxxn xxxs$xxr... @ hxrdxxr. $$nput $s over xftxxr th$s! Or is it...   ';
foreach (@rules) {
    ($s, $r) = m/(.*)\|(.*)/;
    $text =~ s/\Q$s\E/$r/g;
}

print OUTPUT $text;
close FILE;
close OUTPUT;