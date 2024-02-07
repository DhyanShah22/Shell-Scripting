#!/bin/bash

# Define the quantum time slice
quantum=2

# Define an array of processes with their respective burst times
declare -a processes=("P1" "P2" "P3" "P4")
declare -a burst_times=(5 7 3 9)

# Calculate the total number of processes
num_processes=${#processes[@]}

# Create a copy of burst times array to keep track of remaining burst times
remaining_burst_times=("${burst_times[@]}")

# Initialize time and waiting time
time=0
total_waiting_time=0

echo "Process   Burst Time   Waiting Time"

# Loop until all processes are completed
while [ true ]; do
    all_finished=true
    
    # Loop through each process
    for (( i=0; i<$num_processes; i++ )); do
        # If the process still has remaining burst time
        if [ ${remaining_burst_times[$i]} -gt 0 ]; then
            all_finished=false
            if [ ${remaining_burst_times[$i]} -gt $quantum ]; then
                # Reduce the remaining burst time by quantum
                remaining_burst_times[$i]=$(( ${remaining_burst_times[$i]} - $quantum ))
                # Increment time by quantum
                time=$(( $time + $quantum ))
            else
                # If remaining burst time is less than or equal to quantum, finish the process
                time=$(( $time + ${remaining_burst_times[$i]} ))
                waiting_time=$(( $time - ${burst_times[$i]} ))
                total_waiting_time=$(( $total_waiting_time + $waiting_time ))
                echo "${processes[$i]}            ${burst_times[$i]}             $waiting_time"
                # Set remaining burst time to 0 to mark the process as completed
                remaining_burst_times[$i]=0
            fi
        fi
    done

    # If all processes are finished, exit the loop
    if $all_finished; then
        break
    fi
done

# Calculate and print average waiting time
average_waiting_time=$(echo "scale=2; $total_waiting_time / $num_processes" | bc)
echo "Average Waiting Time: $average_waiting_time"

