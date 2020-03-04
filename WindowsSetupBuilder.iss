; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Marxan Connect"
#define MyAppVersion "v1.0.1-rc2020.03.03.21"
#define MyAppPublisher "Canadian Healthy Oceans Network"
#define MyAppURL "http://marxanconnect.ca/"
#define MyAppExeName "MarxanConnectGUI.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{568B7CC2-1085-484D-BFB8-8410BF642C7F}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\MarxanConnect
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=C:\Users\daigl\Documents\GitHub\MarxanConnect\LICENSE
OutputDir=C:\Users\daigl\Documents\GitHub\MarxanConnect
OutputBaseFilename=MarxanConnect-v1-0-1-rc2020-03-03-21-windows-setup
SetupIconFile=C:\Users\daigl\Documents\GitHub\MarxanConnect\docs\images\icon_bundle.ico
Compression=lzma
SolidCompression=yes
AlwaysRestart=True
UsePreviousAppDir=False
DisableDirPage=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Users\daigl\Documents\GitHub\MarxanConnect\dist\MarxanConnect\MarxanConnectGUI.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\daigl\Documents\GitHub\MarxanConnect\dist\MarxanConnect\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
Root: HKCR; SubKey: ".MarCon"; ValueType: string; ValueData: "MarxanConnectProject"; Flags: uninsdeletekey
Root: HKCR; SubKey: "MarxanConnectProject"; ValueType: string; ValueData: "Marxan Connect Project File"; Flags: uninsdeletekey
Root: HKCR; SubKey: "MarxanConnectProject\Shell\Open\Command"; ValueType: string; ValueData: """{app}\MarxanConnectGUI.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "MarxanConnectProject\DefaultIcon"; ValueType: string; ValueData: "{app}\MarxanConnectGUI.exe,0"; Flags: uninsdeletevalue

[Messages]
DirExists=The folder: %1 already exists. %n%nTo avoid conflicts, it is recommended that you uninstall any previous versions of Marxan Connect before re-installing the program. Alternatively, you may choose a new folder location on the previous page to install in another location. %n%nWould you like to install Marxan Connect to this folder anyway? Proceed at your own risk: answering "yes" below will likely result in errors.
DirExistsTitle=Warning: Folder Exists

[Dirs]
Name: "{app}"; Flags: uninsalwaysuninstall
