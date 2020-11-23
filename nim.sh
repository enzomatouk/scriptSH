#!/bin/bash

nbElements = 20

while [ nbElements > 0 ]
do

   echo 'nbElements'
   echo "Its the player's turn! Take between 1 or 3 sticks!"
   read playerChoice
   let "nbElements = nbElements = nbElements - playerChoice"

   echo 'nbElements'
   echo "Its the IA's turn!"
   let "iaChoice = 4 - playerChoice"
   let "nbElements = nbElements - iaChoice"

   if [ $nbElements = 0 ]
done



