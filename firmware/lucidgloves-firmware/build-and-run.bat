set PORT=%1
arduino-cli compile --fqbn esp32:esp32:esp32
arduino-cli upload -p %PORT% --fqbn esp32:esp32:esp32 .