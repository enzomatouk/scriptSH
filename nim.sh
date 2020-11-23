#!/bin/bash

echo "*************************************"
echo "********** THE NIM GAME *************"
echo "*************************************"
echo "*************************************"
echo ""
echo ""
echo "What is your name?"
read name
echo ""
echo "Hello, $name!"
echo ""

game_running=true

nbElements=20


echo "There are 20 sticks"
echo "You must remove 1 - 3 sticks for each turn, and be the last to remove all the sticks."
while [ $nbElements -gt 0 ]
do

   echo "Its the player's turn! Take between 1 or 3 sticks!"
   read playerChoice
       if [ $playerChoice -lt 1 ] || [ $playerChoice -gt 3 ]
       then
           echo "Please choose a number between 1 and 3!"
       elif [ $playerChoice -ge 1 ] || [ $playerChoice -le 3 ]
       then
           let "nbElements = nbElements - playerChoice"
           echo ""
           echo "There are $nbElements sticks left"
           echo ""
       fi

       echo "Its the AI's turn!"
       let "aiChoice = 4 - playerChoice"
       echo "the AI takes $aiChoice"
       echo ""
       let "nbElements = nbElements - aiChoice"
       echo "There are $nbElements sticks left"
       echo ""

   if [ $nbElements -eq 0 ]
   then
       echo "*******************************"
       echo "********** GAME OVER **********"
       echo "*******************************"
       game_running = false
   fi
done



