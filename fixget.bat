@echo off
set TempFile_Name=%SystemRoot%\System32\BatTestUACin_SysRt%Random%.batemp


( echo "BAT Test UAC in Temp" >%TempFile_Name% ) 1>nul 2>nul

if exist %TempFile_Name% (
echo ���ڳ����޸����˹����ȡ���⡭��
@echo 173.194.72.82 adfiltering-rules.googlecode.com>>%Systemroot%\system32\drivers\etc\hosts
@echo 31.170.163.99 xcffl.tk>>%Systemroot%\system32\drivers\etc\hosts
echo ����ɣ��볢�����»�ȡ����
) else (
echo û���Թ���Ա������е�ǰ�������޷��޸����˹����ȡ���⡣
)
Rem type %TempFile_Name%
del %TempFile_Name% 1>nul 2>nul
pause >nul
exit