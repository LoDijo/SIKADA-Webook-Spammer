@echo off
title         <3      Sik3 Webhook Spammer          <3          Made by Sik3 <3
color 03
:Main
color 8
echo  .-.-. .-.-. .-.-. .-.-. .-.-. 
echo ( S .'( I .'( K .'( 3 .'( OP .' 
echo  `.(   `.(   `.(   `.(   `.(   
echo.
echo -----------------------------------
echo Made By Sik3
echo 1. Discord (Credits)
echo 2. Spammer
echo 3. Deleter
echo 4. Exit
set /p enter= Enter Option  
if %enter% == 2 goto spammer
if %enter% == 3 goto deleter
if %enter% == 1 start https://rafagaso.000webhostapp.com/
if %enter% == 4 goto exit
cls
goto main 


:spammer
color 6
set /p webhook="Enter Webhook:  "
cls
set /p username="Enter Username:  "
cls
set /p message="Enter Message:  "
cls
set /p amount="Enter amount of times to spam: [0 = Unlimited] "
rem No Limit Spammer
if "%amount%"=="0" (
:UnlimitedSpam
curl -d "content=%message%" -d "username=%username%" -X POST %webhook%
goto UnlimitedSpam
)
for /l %%a in (1, 1, %amount%) do (
curl -d "content=%message%" -d "username=%username%" -X POST %webhook%
cls
echo Message sent %%a times
)
echo.
 


:deleter
color 9
@echo off
title Webhook Deleter
echo Made By Sik3
color 03
set /p input="Enter Your Webhook Url:"
CURL -X "DELETE" %input%
set /p input= Webhook SuccessFul Deleted
cls
goto main

:exit
@echo 
cls
askkill /IM your-program-name.your-program-extension /T /F
askkill /IM your-program-name.your-program-extension /T /F
exit