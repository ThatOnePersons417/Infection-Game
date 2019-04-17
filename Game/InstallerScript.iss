; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Infection"
#define MyAppVersion "1.5"
#define MyAppPublisher "Random Games"
#define MyAppURL "http://www.hasthelargehadroncolliderdestroyedtheworldyet.com/"
#define MyAppExeName "Game.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{FD099454-7E37-4AC3-A122-0DE8905278C2}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
OutputBaseFilename=Infection Installer
SetupIconFile=C:\Users\Alex\Documents\C++ Projects\Game\Game\Logo.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Alex\Documents\C++ Projects\Game\Release\Game.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Alex\Documents\C++ Projects\Game\Release\Game.iobj"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Alex\Documents\C++ Projects\Game\Release\Game.ipdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Alex\Documents\C++ Projects\Game\Release\Game.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Alex\Documents\C++ Projects\Game\Release\openal32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Alex\Documents\C++ Projects\Game\Release\sfml-audio-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Alex\Documents\C++ Projects\Game\Release\sfml-graphics-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Alex\Documents\C++ Projects\Game\Release\sfml-network-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Alex\Documents\C++ Projects\Game\Release\sfml-system-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Alex\Documents\C++ Projects\Game\Release\sfml-window-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Alex\Documents\C++ Projects\Game\Release\img\*"; DestDir: "{app}\img"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Alex\Documents\C++ Projects\Game\Release\fonts\*"; DestDir: "{app}\fonts"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
