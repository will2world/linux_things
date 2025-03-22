# 환경변수 설정파일 테스트
- /etc/environment --> 전역 환경변수 설정임. 당연히 작동함.
- .profile -->  실패. 작동하지 않음.
- .xprofile --> 성공. 환경변수는 .xprofile에서 수행하면됨. cli 세션에서는 작동하지 않음.


# tex PATH 추가 테스트
- .bash_profile --> 성공
- .xprofile --> x 환경에서 성공. 
