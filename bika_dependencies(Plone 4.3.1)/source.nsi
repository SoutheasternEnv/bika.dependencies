# name the installer
OutFile "Installer.exe"
BrandingText "Bika Lab Systems"
Name "Plone HotFix"
RequestExecutionLevel admin ;Require admin rights on NT6+ (When UAC is turned on)
InstallDir "C:\Plone43\"

!include "x64.nsh"
Page directory
Page instfiles

# default section start; every NSIS script has at least one section.
Section

SetOutPath "$INSTDIR\python\Lib\site-packages\"
${If} ${RunningX64}
   File /r "cffi_x64\*"
${Else}
   File /r "cffi_x86\*"
${EndIf}


SetOutPath $SYSDIR
${DisableX64FSRedirection}
SetOutPath "$WINDIR\System32"
File /r "libcairo-2\*"

# default section end
SectionEnd