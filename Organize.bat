@echo off
rem Allow for variables to be actually read in loops instead of after the cmd is done (requires to replace % for ! in that case)
SETLOCAL ENABLEDELAYEDEXPANSION
rem For each file in your folder
for %%a in (".\*") do ( set org=%%~xa
rem (debug checks in case something goes wrong)
echo !org!
echo %%~xa
rem check if the file has an extension and if it is not our script
if "%%~xa" NEQ "" if "%%~dpxa" NEQ "%~dpx0" (
rem check if the file has the ~ character before creating the folders and moving the files
(
echo "%%a"| findstr /i /c:"~" >nul) && ( echo "%%a cannot be moved due to the ~ flag character") || (if not exist "%%~xa" mkdir "!org:.=~!" 
rem Move the file to directory
move "%%a" "!org:.=~!")
))

rem If you add the ~ character in the name of a file
rem this script will ignore it and let it be there.
rem it will also ignore .bat files in order to not be
rem moved itself

rem This script was made by RockRevenchy and its purpose
rem is to simply organize files by their extension quickly
rem for the lazy ones who doesnt like sitting all day to
rem cleaning up their random junk ;p
