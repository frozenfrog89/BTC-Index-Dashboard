# run_update.ps1
# 이 스크립트는 백엔드 파이썬 코드를 실행하여 데이터를 갱신하고 GitHub에 업로드합니다.
# 실행 후 터미널 창은 자동으로 닫힙니다.

# 1. 경로 설정
$SCRIPT_DIR = Split-Path -Parent $MyInvocation.MyCommand.Path
$VENV_PYTHON = "$SCRIPT_DIR\.venv\Scripts\python.exe"
$BACKEND_SCRIPT = "$SCRIPT_DIR\BTC INDEX Backend\bitcoin onchain Backend.py"

# 2. 파이썬 스크립트 실행
# -WindowStyle Hidden을 주면 아예 안보이게 할 수도 있지만, 
# 사용자가 작동 여부를 인지할 수 있도록 최소화 상태로 실행하거나, 짧게 떴다 사라지게 함.
Write-Host "🚀 Bitcoin Dashboard Auto-Updater Running..." -ForegroundColor Green
& "$VENV_PYTHON" "$BACKEND_SCRIPT"

# 3. 종료 (5초 대기 후 닫힘 - 파이썬 코드 내에서 5초 대기함)
exit
