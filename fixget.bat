@echo off
set TempFile_Name=%SystemRoot%\System32\BatTestUACin_SysRt%Random%.batemp
echo %TempFile_Name%

( echo "BAT Test UAC in Temp" >%TempFile_Name% ) 1>nul 2>nul

if exist %TempFile_Name% (
echo ���ڳ����޸����˹����ȡ���⡭��
@echo 203.208.47.1 adfiltering-rules.googlecode.com>>c:\windows\system32\drivers\etc\hosts
echo ����ɣ��볢�����»�ȡ����
) else (
echo û���Թ���Ա������е�ǰ�������޷��޸����˹����ȡ���⡣
)
pause
Rem type %TempFile_Name%
del %TempFile_Name% 1>nul 2>nul
pause >nul
exit