@echo off
color 2E
If "%PROCESSOR_ARCHITECTURE%"=="AMD64" (Set b=%SystemRoot%\SysWOW64) Else (Set b=%SystemRoot%\system32)
Rd "%b%\test" >nul 2>nul
Md "%b%\test" 2>nul||(Echo ��ʹ�õ���XP����ϵͳ����ʹ���Ҽ�����Ա�������&&Pause >nul&&Exit)
Rd "%b%\test" >nul 2>nul

echo ===================================================================
echo $ �˹��������޸���ɽ��ʿ�����˳��ֵ�һЩ���⣡
echo ===================================================================
echo $ ����ʹ���Ϲ����ĳЩ��վ�����粻�ܲ����ſ���Ƶ�������
echo $ �Զ�����������ʱ��ʾ�Ѵ��ڵ�����һЩ����֢״���������������~~
echo ===================================================================
echo $ �������Զ��ж�ϵͳ���ͣ��ʺ�XP��VISTA��WIN7��
echo $ ʹ��VISTA��WIN7ϵͳ����ʹ�ù���Ա���У�
echo ===================================================================
echo $ ע������������������й���ʹ��ǰ�����б����Զ���Ĺ����мǣ���
echo $ Edit By June!
echo ===================================================================
pause

echo.
echo ����ѡ 1 ����
echo ����ѡ 2 �˳�
echo.
set /p p=����ѡ��:��
if %p%==1 goto FIX
if %p%==2 goto exit

::================= �޸� BUG =====================
:FIX
ver | find "5.1" >nul && if %errorlevel% equ 0 del %systemdrive%\Documents and Settings\All Users\Application Data\kingsoft\kis\kws\adidname.dat && del %systemdrive%\Documents and Settings\All Users\Application Data\kingsoft\kis\kws\blacklist.dat
ver | find "6.1" >nul && if %errorlevel% equ 0 del %systemdrive%\ProgramData\kingsoft\kis\kws\adidname.dat && del %systemdrive%\ProgramData\kingsoft\kis\kws\blacklist.dat
ver | find "6.2" >nul && if %errorlevel% equ 0 del %systemdrive%\ProgramData\kingsoft\kis\kws\adidname.dat && del %systemdrive%\ProgramData\kingsoft\kis\kws\blacklist.dat
echo ����ɣ���������������������������¶���/������򼴿ɡ��������������
pause >nul
exit

