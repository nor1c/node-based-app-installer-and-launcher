# @echo off

concurrently "cd server && pm2 start dist/main.js --name=pharma-server" "cd app && npm run start"
