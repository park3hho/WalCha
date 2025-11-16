# ====================================================================
# 1. Path Configuration / 폴더 위치
# =====================================================================

# Folder 1 Directory (Portrait) / 폴더 1 디렉토리 (세로 이미지)
$PortraitFolder = "C:\Users\A"

# Folder 2 Directory (Landscape) / 폴더 2 디렉토리 (가로 이미지)
$LandscapeFolder = "C:\Users\B"

# =================================================================
# 2. File Selection for Monitor 1 (Landscape) / 가로 방향 모니터
# =================================================================

Write-Host "--- Processing Monitor 1 (Index 0) - Assigned Landscape ---"

# Select files only (.jpg, .png, .bmp) from the Landscape folder and its subdirectories.
# FullName 속성은 파일의 전체 경로를 포함합니다.
$LandscapeFiles = Get-ChildItem -Path $LandscapeFolder -File -Include "*.jpg", "*.png", "*.bmp" -Recurse | Select-Object -ExpandProperty FullName

if ($LandscapeFiles.Count -eq 0) {
    Write-Error "No usable image files found in the Landscape image folder ($LandscapeFolder). Skipping Monitor 1."
} else {
    # Select one image file randomly
    $RandomLandscape = Get-Random -InputObject $LandscapeFiles

    # 🌟 수정된 부분: 원본 경로($RandomLandscape)를 Set-Wallpaper에 바로 사용합니다.

    Write-Host "Selected File: '$($RandomLandscape)'"

    # Set Wallpaper for Monitor 1 (Index 0) - Uses -First 1
    Write-Host "Setting wallpaper for the first monitor (Index 0)..."
    Get-Monitor | Select-Object -First 1 | Set-Wallpaper -Path $RandomLandscape
    Write-Host "Success: Monitor 1 wallpaper set using the original file path."
}


# =================================================================
# 3. File Selection for Monitor 2 (Portrait) / 세로 방향 모니터
# =================================================================

Write-Host "`n--- Processing Monitor 2 (Index 1) - Assigned Portrait ---"

# Select files only (.jpg, .png, .bmp) from the Portrait folder and its subdirectories.
$PortraitFiles = Get-ChildItem -Path $PortraitFolder -File -Include "*.jpg", "*.png", "*.bmp" -Recurse | Select-Object -ExpandProperty FullName

if ($PortraitFiles.Count -eq 0) {
    Write-Error "No usable image files found in the Portrait image folder ($PortraitFolder). Skipping Monitor 2."
} else {
    # Select one image file randomly
    $RandomPortrait = Get-Random -InputObject $PortraitFiles

    # 🌟 수정된 부분: 원본 경로($RandomPortrait)를 Set-Wallpaper에 바로 사용합니다.

    Write-Host "Selected File: '$($RandomPortrait)'"

    # Set Wallpaper for Monitor 2 (Index 1) - Index 1을 명시적으로 선택
    Write-Host "Setting wallpaper for the second monitor (Index 1)..."
    Get-Monitor | Where-Object {$_.Index -eq 1} | Set-Wallpaper -Path $RandomPortrait
    Write-Host "Success: Monitor 2 wallpaper set using the original file path."
}

Write-Host "`nTask Complete: Dual monitor wallpaper configuration finished using direct file paths."