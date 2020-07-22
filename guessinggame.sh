function count_lines {
  number_of_lines=$(ls -lp | grep -v '^\.' | grep -v '/$'|wc -l)
  let number_of_lines=$number_of_lines-1
} #This can be done without a function, but I needed it for the assignment
guess=0 #Start with 0, so user prompted at least once

count_lines #Run function defined above, returns value in a variable called number_of_lines

#Tell user to try the file on a different directory if it is empty
if [[ $number_of_lines = 0 ]]
then
  echo "This directory is empty, guessinggame.sh requires at least one file"
fi


#Loop to check the answer against the output of the function
while [[ $guess != $number_of_lines ]]
do
  read -p "How many files do you think there are in this directory? " guess #Prompts user for input
  if ! [[ $guess =~ ^[0-9]+$ ]]
  then
    echo "Please enter a number"
  elif [[ $guess -gt $number_of_lines ]]
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
