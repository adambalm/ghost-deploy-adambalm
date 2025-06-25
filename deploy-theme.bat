@echo off
setlocal

REM Step 1: Set your paths
set THEME_SOURCE=C:\Users\alexisgreenblatt\ghost\ghost-theme-adambalm-main
set DEPLOY_REPO=C:\Users\alexisgreenblatt\ghost\ghost-deploy-adambalm
set THEME_TARGET=%DEPLOY_REPO%\content\themes\adambalm-theme

REM Step 2: Create target theme directory
echo Creating theme directory at %THEME_TARGET%
mkdir "%THEME_TARGET%"

REM Step 3: Copy all theme files
echo Copying theme files from %THEME_SOURCE% to %THEME_TARGET%
xcopy /E /I /Y "%THEME_SOURCE%\*" "%THEME_TARGET%\"

REM Step 4: Commit and push
cd /d "%DEPLOY_REPO%"
echo Adding and committing changes...
git add .
git commit -m "add: custom theme with plausible tracking and updated default.hbs"
git push

echo.
echo 🚀 All done. Check your site at https://ghost-deploy-adambalm.onrender.com/ in a few minutes.

endlocal