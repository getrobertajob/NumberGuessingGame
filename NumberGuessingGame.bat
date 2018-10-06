 @echo off

REM guessing game by Robert Lute
REM sorry I was bored


REM declare variables
 set /a guessnum=0
 set /a answer=%random% %% 1000 +1
 set variable1=robertisthebest

REM opening screen
 echo -------------------------------------------------
 echo Welcome to the Guessing Game! 
 echo. 
 echo Try to guess a number between 1 and 1,000
 echo -------------------------------------------------
 echo. 

REM starting point to return to
 :top
  echo. 

REM user input for guess
 set /p guess=

REM results check if wrong
 echo. 
  if %guess% GTR %answer% ECHO Lower! 
  if %guess% LSS %answer% ECHO Higher! 
  if %guess%==%answer% GOTO EQUAL
 set /a guessnum=%guessnum% +1

REM results if hidden answer is correct
 if %guess%==%variable1% ECHO Found the backdoor hey?, the answer is: %answer%
  goto top

REM results if correct
 :equal
  echo Congratulations, You guessed right!!! 
  echo. 
  echo It took you %guessnum% guesses. 
  echo. 
 pause