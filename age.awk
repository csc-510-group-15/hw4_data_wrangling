BEGIN {
    FS = ",";  # Set the field separator to a comma
    total_age = 0;
    count = 0;
}

{
    # Skip the header row and rows where Age is missing
    if (NR > 1 && $7 != "") {
        total_age += $7;  # Add the age to the total
        count++;          # Increment the count of valid ages
    }
}

END {
    # Calculate and print the average age
    if (count > 0) {
        average_age = total_age / count;
        print "Average age of passengers:", average_age;
    } else {
        print "No valid age data found.";
    }
}