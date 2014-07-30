@lines = <>;
chomp(@lines);

print @lines[0],"\n";

for($i = 0; $i<@lines[0]; $i++){
    $query = @lines[$i*2+1];
    $query =~ s/([a-z])/$1 ?/gi;
    
    $string = @lines[$i*2+2];
    print $string =~ m/\b$query/i ? "true\n":"false\n";
}