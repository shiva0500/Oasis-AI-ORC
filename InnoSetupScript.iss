[Setup]
AppName=Oasis AI: Offline Research Companion
AppVersion=1.0
DefaultDirName={autopf}\OasisAI
DefaultGroupName=Oasis AI
OutputBaseFilename=OasisAIInstaller
Compression=lzma
SolidCompression=yes
OutputDir=output
ArchitecturesInstallIn64BitMode=x64
SetupIconFile=assets\logo.ico

[Files]
Source: "dist\OasisAI.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "models\all-MiniLM-L6-v2\*"; DestDir: "{app}\models\all-MiniLM-L6-v2"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "assets\*"; DestDir: "{app}\assets"; Flags: ignoreversion recursesubdirs createallsubdirs


[Icons]
Name: "{group}\Oasis AI"; Filename: "{app}\OasisAI.exe"; IconFilename: "{app}\assets\logo.ico"
Name: "{commondesktop}\Oasis AI"; Filename: "{app}\OasisAI.exe"; IconFilename: "{app}\assets\logo.ico"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Create a desktop icon"; GroupDescription: "Additional icons:"
