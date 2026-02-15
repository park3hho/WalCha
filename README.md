# 왈챠 (WalCha) OpenSource
 
> **듀얼 모니터**같이, 화면 크기나 방향이 다른 상황에서 각각 다른 배경화면을 **스케쥴링**하여 적용하고 싶을 때 사용하는 오픈 소스입니다. 

## 조건
1. `**FP.SetWallpaper**` PowerShell 모듈을 사용하여 다운해주셔야 합니다.
```
Install-Module FP.SetWallpaper -AllowPrerelease
```
2. 확장자는 png, jpg, bmp만 설정되어 있습니다. 필요하면 코드에서 추가하세요.
3. powershell 스크립트 추가하실 때 powershell 버전 확인해주세요.
4. 스케쥴링 설정은 직접 해주셔야 합니다.
> 링크: https://www.figma.com/board/1KtzyYTK5Fs4OG1Qam4CqX/Refresh-Wallpaper?node-id=0-1&t=dGglnQiX9rIEIGyg-1

## 모니터가 세가지 이상일 때
1. wallpapers 내의 폴더를 하나 더 늘려주세요.
2. 디렉토리 관련 코드 추가 해주세요.
3. 모니터 배경화면 설정 코드 추가 해주세요.# WalCha

---
FP.SetWallpaper - https://github.com/federico-paolillo/set-wallpaper