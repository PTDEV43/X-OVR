# PTCODELABS : X-OVR BOOTLOADER v0.1.3 (Sovereign Assembly)
# ---------------------------------------------------------

# บังคับดึงเนื้อหาจากเลเยอร์ความปลอดภัย
$SecurityLogic = Get-Content -Raw "$(Get-Location)\core\security\vault.ps1"
Invoke-Expression $SecurityLogic

# [CLASS ASSEMBLY] - นิยามตัวตนของ Agent ไว้ที่ศูนย์กลาง
class SovereignAgent {
    [string]Name
    [bool]IsAuthorized = $false

    SovereignAgent([string]gentName) {
        $this.Name = $agentName
    }

    [void] VerifyIdentity([string]key) {
        if ($key -like "PT-SEC-*") {
            $this.IsAuthorized = $true
            Write-Host "[OK] Identity Verified for $($this.Name)" -ForegroundColor Green
        } else {
            Write-Host "[ERROR] Invalid Sovereign Key" -ForegroundColor Red
        }
    }

    [void] ExecuteAction([string]ction) {
        if ($this.IsAuthorized) {
            Write-Host "Agent [$($this.Name)] is executing: $action" -ForegroundColor Cyan
        } else {
            Write-Host "Action Blocked: Authorization Required." -ForegroundColor Yellow
        }
    }
}

Clear-Host
Write-Host ">>> PTCODELABS : X-OVR SYSTEM ONLINE <<<" -ForegroundColor Blue -BackgroundColor White

try {
    Write-Host "[*] Initializing Agent Core..." -ForegroundColor Gray
    # สร้าง Instance
    $Xovr = [SovereignAgent]::new("X-OVR-001")

    Write-Host "[*] Fetching Sovereign Key from Vault..." -ForegroundColor Gray
    $currentKey = Get-SovereignKey -KeyID "ADMIN-43"
    $Xovr.VerifyIdentity($currentKey)

    # สั่งการ
    $Xovr.ExecuteAction("INITIALIZE_SWARM_PROTOCOL")
    $Xovr.ExecuteAction("MONITOR_BLOCKCHAIN_IDENTITY")

    Write-Host "
[!] System Status: ALL MODULES FUNCTIONAL" -ForegroundColor Green
}
catch {
    Write-Host "
[CRITICAL ERROR] System Failure: $($_.Exception.Message)" -ForegroundColor Red
}
