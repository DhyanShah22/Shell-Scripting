#!/bin/bash

# Define an associative array to hold questions and answers
declare -A quiz_questions=(
    ["What is the capital of France?"]="Paris"
    ["Who wrote 'Romeo and Juliet'?"]="William Shakespeare"
    ["What is the chemical symbol for water?"]="H2O"
)

# Initialize variables to track score and question count
score=0
total_questions=${#quiz_questions[@]}
question_count=0

# Loop through each question
for question in "${!quiz_questions[@]}"; do
    ((question_count++))
    
    # Display the question
    echo "Question $question_count: $question"
    
    # Prompt the user for an answer
    read -p "Your answer: " user_answer
    
    # Convert both answers to lowercase for case-insensitive comparison
    correct_answer="${quiz_questions[$question],,}"
    user_answer="${user_answer,,}"
    
    # Check if the user's answer is correct
    if [ "$user_answer" = "$correct_answer" ]; then
        echo "Correct!"
        ((score++))
    else
        echo "Incorrect. The correct answer is: $correct_answer"
    fi
    
    echo  # Empty line for better readability
done

# Display final score
echo "Quiz complete! You scored $score out of $total_questions."

