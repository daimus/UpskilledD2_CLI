#!/bin/sh
# Make root directory
DIRNAME="$1 at $(date)"
mkdir "$DIRNAME"
# Create about me - personal
mkdir "$DIRNAME/personal"
echo "https://www.facebook.com/$2" > "$DIRNAME/personal/facebook.txt"
# Create about me - professional
mkdir "$DIRNAME/professional"
echo "https://www.linkedin.com/in/$3" > "$DIRNAME/professional/linkedin.txt"
# Create list of my friends
mkdir "$DIRNAME/my_friends"
curl -s -XGET 'https://gist.githubusercontent.com/tegarimansyah/e91f335753ab2c7fb12815779677e914/raw/94864388379fecee450fde26e3e73bfb2bcda194/list%2520of%2520my%2520friends.txt' > "$DIRNAME/my_friends/list_of_my_friends.txt"
# Get my system info - about this laptop
mkdir "$DIRNAME/my_system_info"
uname -a > "$DIRNAME/my_system_info/about_this_laptop.txt"
# Get my system info - internet connection
ping -c 3 google.com > "$DIRNAME/my_system_info/internet_connection.txt"
