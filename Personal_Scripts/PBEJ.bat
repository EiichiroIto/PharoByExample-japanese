@echo off
rem utf-8��tex�t�@�C����SJIS�ցA���̌�pdflatex�̓ǂ߂�`���֕ϊ�����o�b�`�t�@�C���ł��B
rem �v nkf32.exe�AW32TeX
rem ver. 0.1 ponpoko321000

rem �O�̂��ߑ���TeX�v���O�������g��Ȃ��悤�Ƀp�X����폜
set PATH=%PATH:C:\Program_Files\TeX\texlive\2010\bin\win32;=%
rem nkf32.exe�ւ̃p�X��ǉ�
set PATH=C:\Program Files\nkf;%PATH%
rem topdftex.exe�ւ̃p�X��ǉ�
set PATH=C:\Program_Files\TeX\W32TeX\bin;%PATH%
:loop
if "%1"=="" goto end
rem �etex�t�@�C���̃f�B���N�g���ֈړ�
cd /d %~dp1
rem ���̃t�@�C���͌���.org�����ĕۑ�
copy  %~nx1 %~nx1.org
rem utf-8��SJIS�ɕύX
nkf -s -W8 -Lu %~nx1 > %~nx1.sjis
rem pdflatex�ɂ�����O����
topdftex %~nx1.sjis %~nx1
shift
goto loop
:end
