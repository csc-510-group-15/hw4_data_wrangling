#!/usr/bin/env gawk -f  

# Print the first 5 lines of a CSV file  
BEGIN {  
    FS = ",";   # Set field separator to comma  
    OFS = "\t"; # Set output field separator to tab  
}  

NR <= 5 {  
    print $0  # Print the entire line  
}  

END {  
    print "Processing Complete"  
}  
