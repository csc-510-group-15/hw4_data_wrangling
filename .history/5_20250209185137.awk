BEGIN { FS = ","; OFS = "\t" } {
	if ($3 > 100)
	print $1, $3 * 2
}
END { print "Processing Complete" }