@echo off
cd \windows\system32

::Luffy
curl -k https://pb.ongame.net/ranking/individual/10654794/Luffy/ | find /i "ltimo login" > c:\temp\2.txt
for /f "tokens=9 delims=>" %%c in (c:\temp\2.txt) do ( set luffy="%%c")

::PERSEU
curl -k https://pb.ongame.net/ranking/individual/12468231/Perseu/ | find /i "ltimo login" > c:\temp\3.txt
for /f "tokens=9 delims=>" %%b in (c:\temp\3.txt) do ( set perseu="%%b")

::Manolo

curl -k https://pb.ongame.net/ranking/individual/1732029/SrMANOLO/ | find /i "ltimo login" > c:\temp\4.txt
for /f "tokens=9 delims=>" %%d in (c:\temp\4.txt) do ( set manolo="%%d")

:: Leozin
curl -k https://pb.ongame.net/ranking/individual/1846559/LeeooziiinhooO/ | find /i "ltimo login" > c:\temp\5.txt
for /f "tokens=9 delims=>" %%e in (c:\temp\5.txt) do ( set leozin="%%e")
cls
echo ##################################################
echo | set /p=########### & powershell write-host Ultimo Login no PB -ForegroundColor Red -NoNewline & echo   ##################
echo ##################################################
REM Exibir o resultado
echo | set /p=## & powershell write-host Luffy -ForegroundColor Green -NoNewline & echo  %luffy:~15,20% as %luffy:~40,5%   #########   
echo | set /p=## & powershell write-host Perseu -ForegroundColor Green -NoNewline & echo %perseu:~15,20% as %perseu:~40,5%   #########
echo | set /p=## & powershell write-host Manolo -ForegroundColor Green -NoNewline & echo %manolo:~15,20% as %manolo:~40,5%   #########
echo | set /p=## & powershell write-host Leozin -ForegroundColor Green -NoNewline & echo %leozin:~15,20% as %leozin:~40,5%   #########
echo ##################################################
echo.
echo.
echo.
echo.
pause
