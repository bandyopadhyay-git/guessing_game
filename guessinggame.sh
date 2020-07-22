function count_lines {
  number_of_lines=$(ls | wc -l)
} #This can be done without a function, but I needed it for the assignment
guess=0 #Start with 0, so user prompted at least once

count_lines #Run function defined above, returns value in a variable called number_of_lines

#Loop to check the answer against the output of the function
while [[ $guess != $number_of_lines ]]
do
  read -p "How many files do you think there are in this directory? " guess #Prompts user for input
  if [[ $guess -gt $number_of_lines ]]
  then
    echo "Your guess is too high, try again!"
  elif [[ $guess = $number_of_lines ]]
  then
    echo "Well done!"
    break #Break loop if user is correct. Otherwise, the program will keep running 
  else
      echo "Your guess was too low, try again!"
  fi
done
