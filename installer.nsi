Name "Next App"
OutFile "Installer\Installer.exe"
InstallDir "$PROGRAMFILES\Next App"

Section
    SetOutPath $INSTDIR
    File "app.zip"

    ; Extract files from the zip archive
    ExecWait '"$SYSDIR\cmd.exe" /C powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive \"$INSTDIR\app.zip\" -DestinationPath \"$INSTDIR\""'
    Delete "$INSTDIR\app.zip"

    ; Create shortcuts
    CreateShortcut "$DESKTOP\Next App.lnk" "$INSTDIR\Next App.exe"
    CreateShortcut "$SMPROGRAMS\Next App\Uninstall.lnk" "$INSTDIR\uninstall.exe"

    MessageBox MB_ICONINFORMATION|MB_OK "Installation successful. Your Next App application has been installed."
    Quit

SectionEnd

Section "Uninstall"
    Delete "$DESKTOP\Next App.lnk"
    Delete "$SMPROGRAMS\Next App\Uninstall.lnk"
    RMDir /r "$INSTDIR"
SectionEnd