#!/bin/bash

read -p "Enter your birthdate (YYYY-MM-DD): " birthdate

birthdate_seconds=$(date -d "$birthdate" +%s)
today_seconds=$(date +%s)
age_seconds=$((today_seconds - birthdate_seconds))

years=$((age_seconds / 31536000))
months=$(((age_seconds % 31536000) / 2628000))
days=$((((age_seconds % 31536000) % 2628000) / 86400))

echo "You are $years years, $months months, and $days days old."
