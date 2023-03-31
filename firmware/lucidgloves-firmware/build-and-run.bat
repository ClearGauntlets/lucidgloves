set PORT=%1
arduino-cli compile --fqbn esp32:esp32:esp32 || goto :error
arduino-cli upload -p %PORT% --fqbn esp32:esp32:esp32 . || goto :error
exit

:error
echo Failed with error #%errorlevel%.
exit /b %errorlevel%