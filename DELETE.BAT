@Echo off
echo �R���w�w�˪��ª`�� 

pushd %~dp0 
@Echo Off
Set input=

:Begin
Set /P input="�n�R���ª`���ܡH�п�JY(����)/N(���}) "
If /I "%input%"=="Y" Goto check
If /I "%input%"=="N" Goto End
Echo �����T����J�A�Э��s��J�C
Goto Begin

:check
if "%SESSIONNAME%" == "Console" goto NoAdmin
If %PROCESSOR_ARCHITECTURE% == AMD64 Goto X64
If %PROCESSOR_ARCHITECTURE% == x86 Goto X86

:NoAdmin
echo �Хk��H�޲z���Ҧ�����I
pause
Goto End

:X64
DEL %windir%\System32\phon.tbl /Q /F
DEL %windir%\System32\phoncode.tbl /Q /F
DEL %windir%\System32\phonptr.tbl /Q /F
DEL %windir%\System32\phonXP.ime /Q /F
DEL %windir%\System32\uniime.dll /Q /F

DEL %windir%\SysWOW64\phon.tbl /Q /F
DEL %windir%\SysWOW64\phoncode.tbl /Q /F
DEL %windir%\SysWOW64\phonptr.tbl /Q /F
DEL %windir%\SysWOW64\phonXP.ime /Q /F
DEL %windir%\SysWOW64\uniime.dll /Q /F

REG DELETE .\old_typer_ver_bat\REG.reg
Goto WIN7Option


:X86
DEL %windir%\System32\phon.tbl /Q /F
DEL %windir%\System32\phoncode.tbl /Q /F
DEL %windir%\System32\phonptr.tbl /Q /F
DEL %windir%\System32\phonXP.ime /Q /F
DEL %windir%\System32\uniime.dll /Q /F

REG DELETE /s .\old_typer_ver_bat\REG.reg
Goto WIN7Option

:WIN7Option
REG DELETE /s .\old_typer_ver_bat\Win7.reg

echo �R�����\�I
pause
Goto End

:End