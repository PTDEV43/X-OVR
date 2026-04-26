# PTCODELABS : X-OVR BOOTLOADER v0.1.2
# ---------------------------------------------------------
# บังคับโหลดเนื้อหาจากไฟล์ Agents และ Security เข้ามาโดยตรง
$AgentLogic = Get-Content -Raw "$(Get-Location)\core\agents\master_agent.ps1"
$SecurityLogic = Get-Content -Raw "$(Get-Location)\core\security\vault.ps1"

# ประมวลผล Logic เข้าสู่ Session ปัจจุบัน
Invoke-Expression $AgentLogic
Invoke-Expression $SecurityLogic

Clear-Host
Write-Host ">>> PTCODELABS : X-OVR SYSTEM ONLINE <<<" -ForegroundColor Blue -BackgroundColor White

try {
    Write-Host "[*] Initializing Agent Core..." -ForegroundColor Gray
    # สร้าง Instance จาก Class ที่โหลดเข้ามา
    $Xovr = New-Object SovereignAgent -ArgumentList "X-OVR-001"

    Write-Host "[*] Fetching Sovereign Key from Vault..." -ForegroundColor Gray
    $currentKey = Get-SovereignKey -KeyID "ADMIN-43"
    $Xovr.VerifyIdentity($currentKey)

    # สั่งการ Agent
    $Xovr.ExecuteAction("INITIALIZE_SWARM_PROTOCOL")
    $Xovr.ExecuteAction("MONITOR_BLOCKCHAIN_IDENTITY")

    Write-Host "
[!] System Status: ALL MODULES FUNCTIONAL" -ForegroundColor Green
}
catch {
    Write-Host "
[CRITICAL ERROR] System Failure: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host "Please ensure 'core/agents/master_agent.ps1' exists and contains the Class definition." -ForegroundColor Yellow
}
