@echo off
title Setup Virtual Environment for YouTube Downloader

echo =================================================================
echo  Kiem tra va tao moi truong ao (venv)...
echo =================================================================
echo.

REM Kiem tra neu thu muc venv chua ton tai thi tao moi
if not exist "venv\" (
    echo Tao thu muc moi truong ao 'venv'. Vui long doi...
    python -m venv venv
    if %errorlevel% neq 0 (
        echo.
        echo LOI: Khong the tao moi truong ao. Vui long kiem tra xem Python da duoc cai dat dung cach chua.
        pause
        exit
    )
    echo Da tao moi truong ao thanh cong.
) else (
    echo Da phat hien moi truong ao 'venv' ton tai.
)

echo.
echo =================================================================
echo  Kich hoat moi truong ao va cai dat thu vien...
echo =================================================================
echo.

REM Kich hoat venv va cai dat thu vien
call "venv\Scripts\activate.bat"
pip install --upgrade yt-dlp

echo.
echo =================================================================
echo  DA CAI DAT XONG!
echo  Ban co the tat cua so nay va chay file 'run.bat' de mo chuong trinh.
echo =================================================================
echo.
pause
exit