BEGIN {
    FS = ",";  
    class_count[1] = 0;
    class_count[2] = 0;
    class_count[3] = 0;
}

{
    
    if (NR > 1) {
        class_count[$3]++;  
    }
}

END {
    # Print the results
    print "Number of passengers in 1st class:", class_count[1];
    print "Number of passengers in 2nd class:", class_count[2];
    print "Number of passengers in 3rd class:", class_count[3];
}