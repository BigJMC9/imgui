if exist "bin" (
    rmdir /s /q "bin"
)
if exist "bin-int" (
    rmdir /s /q "bin-int"
)
if exist ".vs" (
    rmdir /s /q ".vs"
)
call C:\Users\xbox\source\repos\IronMaiden\vendors\bin\premake\premake5.exe vs2022
PAUSE