@echo off
setlocal enabledelayedexpansion

REM Define the URL to search

set /p "url=Enter the URL to search: "
set "iterationCount=0"
REM Infinite loop with a 1-second delay
:searchLoop
    set /A iterationCount+=1

    cls
    echo Iteration: !iterationCount!
    curl -s "%url%" >nul
 
REM Go back to the search loop
goto searchLoop



