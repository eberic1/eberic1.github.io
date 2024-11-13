@echo off
REM Navigate to the specified directory
cd "C:\Users\deber\Documents\GitHub\eberic1.github.io\GameLauncher\App\Release\IncrementalPatch"

REM Step 1: Initialize Git LFS
git lfs install

REM Step 2: Track .patch files with Git LFS
git lfs track "*.patch"

REM Step 3: Stage the .gitattributes file created by Git LFS
git add .gitattributes
git commit -m "Track .patch files with Git LFS" || echo No changes to .gitattributes to commit.
@echo off
REM Navigate to the root of the GitHub repository
cd "C:\Users\deber\Documents\GitHub\eberic1.github.io"

REM Step 1: Initialize Git LFS
git lfs install

REM Step 2: Track .patch files with Git LFS in the entire repository
git lfs track "*.patch"

REM Step 3: Stage the .gitattributes file created by Git LFS
git add .gitattributes
git commit -m "Track .patch files with Git LFS" || echo No changes to .gitattributes to commit.

REM Step 4: Stage all changes in the entire repository
git add .

REM Step 5: Prompt for commit message
set /p commit_message="Enter your commit message: "
git commit -m "%commit_message%"

REM Step 6: Push changes to the main branch
git push origin main
