# Kayla's Unity Utils

Just a set of utility scripts I use for Unity things. Keeping them in this repo for convinience and like, being good about backup sort of things idk.

## UnityBackup.bat

Need to run this as admin to copy Unity directories that include .git folders for repos.

A robocopy script that excludes Unity-Specific directories and files for backups. Pretty much just a .gitignore for unity in a robocopy script for speed. It should show progress, and create a log file in the source dir, it should also dump the output of skipped files in the UI.