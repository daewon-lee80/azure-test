@echo off

FOR /F "tokens=5 delims= " %P IN ('netstat -ano ^| find "LISTENING" ^| find ":%1" ') DO (TASKKILL /F /PID %P)
