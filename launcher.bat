@echo off

cd exe
start next.exe

concurrently "cd ../server && pm2 start dist/main.js --name=api-server"