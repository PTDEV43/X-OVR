. ./core/agents/master_agent.ps1
. ./core/security/vault.ps1

Clear-Host
Write-Host ">>> PTCODELABS : X-OVR SYSTEM ONLINE <<<" -ForegroundColor Blue -BackgroundColor White

# 1. สร้าง Agent
$Xovr = [SovereignAgent]::new("X-OVR-001")

# 2. จำลองการดึงกุญแจจาก Vault และตรวจสอบสิทธิ์
Write-Host "Fetching Sovereign Key from Vault..."
$currentKey = Get-SovereignKey -KeyID "ADMIN-43"
$Xovr.VerifyIdentity($currentKey)

# 3. สั่งการ Agent
$Xovr.ExecuteAction("INITIALIZE_SWARM_PROTOCOL")
$Xovr.ExecuteAction("MONITOR_BLOCKCHAIN_IDENTITY")

Write-Host "
[!] System Status: ALL MODULES FUNCTIONAL" -ForegroundColor Cyan
