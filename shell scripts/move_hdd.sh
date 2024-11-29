#!/bin/bash

# 경로 설정
SOURCE="/home/will/source_dir"
DESTINATION="/home/will/ext_hdd"
LOGFILE="rsync_log.txt"

# 1. 파일 복사
echo "[$(date)] 복사를 시작합니다." | tee -a "$LOGFILE"
rsync -avP "$SOURCE" "$DESTINATION" | tee -a "$LOGFILE"

# 2. 복사 결과 검증 (체크섬 기반)
echo "[$(date)] 복사된 파일을 검증합니다." | tee -a "$LOGFILE"
rsync -avc --dry-run "$SOURCE" "$DESTINATION" | tee -a "$LOGFILE"

# 검증 결과 확인
if [ $? -eq 0 ]; then
    echo "[$(date)] 모든 파일이 성공적으로 복사되었습니다." | tee -a "$LOGFILE"
else
    echo "[$(date)] 파일 검증 중 오류가 발생했습니다. 로그를 확인하세요." | tee -a "$LOGFILE"
fi

# 종료 메시지
echo "[$(date)] 작업이 완료되었습니다." | tee -a "$LOGFILE"

