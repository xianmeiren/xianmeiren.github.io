@echo off
setlocal
cd /d "%~dp0"

if exist "C:\Ruby40-x64\bin\ruby.exe" set "PATH=C:\Ruby40-x64\bin;%PATH%"
set "BUNDLE_PATH=%~dp0vendor\bundle"

where bundle >nul 2>nul
if errorlevel 1 (
  echo Bundler was not found. Check the Ruby installation path near the top of this script.
  pause
  exit /b 1
)

call bundle check >nul 2>nul
if errorlevel 1 (
  echo Installing project gems from the local vendor cache...
  call bundle install --local
  if errorlevel 1 (
    echo Could not install gems from vendor\bundle. Check that its cache is complete.
    pause
    exit /b 1
  )
)

for /f "delims=" %%G in ('call bundle show jekyll') do set "JEKYLL_GEM=%%G"
if not defined JEKYLL_GEM (
  echo Could not locate the Jekyll gem in the configured bundle.
  pause
  exit /b 1
)

echo Starting the site on all network interfaces at port 4000.
echo Open http://127.0.0.1:4000 on this PC, or http://YOUR-PC-IP:4000 from another device.
echo Press Ctrl+C to stop the server.
call bundle exec ruby "%JEKYLL_GEM%\exe\jekyll" serve --host 0.0.0.0 --port 4000
if errorlevel 1 (
  echo Jekyll exited with an error.
  pause
  exit /b 1
)

endlocal
