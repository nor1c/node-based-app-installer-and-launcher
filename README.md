### Front-End
#### Development mode
```bash
yarn tauri dev
```

#### Build and bundle as Microsoft installer
```bash
yarn tauri build
```

for 32-bit or ARM
```bash
yarn tauri build --target i686-pc-windows-msvc
```

for other operating system: https://tauri.app/v1/guides/building

### Build an installer
1. Zip the necessary code to `app.zip`
2. Go to `C:\Program Files (x86)\NSIS>`
3. run `cmd` on the path bar
4. run `makensis.exe C:\path\to\installer.nsi`