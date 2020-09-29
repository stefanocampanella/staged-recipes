if "%ARCH%"=="32" (
    set PLATFORM=Win32
) else (
    set PLATFORM=x64
)

msbuild.exe /p:Platform=%PLATFORM% /p:Configuration=Release

robocopy %SRC_DIR%\out\Release-%PLATFORM%\ %LIBRARY_PREFIX%\ *.* /s /e

dir /s /b
