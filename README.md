<div align="center">

# ⬛ X-OVR CORE
**[ PTCODELABS : SOVEREIGN INFRASTRUCTURE ]**

`A2A PROTOCOL` | `NEURAL SWARM` | `ZERO-TRUST`

[![Status](https://img.shields.io/badge/SYS-ACTIVE-00FF00?style=for-the-badge&color=000000&labelColor=111111)]()
[![Security](https://img.shields.io/badge/SEC-HARDWARE_LOCKED-FF0000?style=for-the-badge&color=000000&labelColor=111111)]()
[![Build](https://img.shields.io/badge/BUILD-FLAT_STRUCTURE-FFFFFF?style=for-the-badge&color=000000&labelColor=111111)]()

</div>

---

> **WARNING:** THIS IS A SOVEREIGN SYSTEM ENVIRONMENT.
> UNAUTHORIZED ACCESS ATTEMPTS WILL BE LOGGED AND TERMINATED.

## // SYSTEM.OVERVIEW
**X-OVR CORE** คือเลเยอร์การประมวลผลขั้นสูงแบบ Flat Structure ที่ถูกวิศวกรรมขึ้นใหม่ทั้งหมดโดย **PTCODELABS** ออกแบบมาเพื่อเป็นกระดูกสันหลังของยุค Agentic AI ขับเคลื่อนด้วยตรรกะแบบกระจายศูนย์ และถูกล็อกด้วยมาตรการรักษาความปลอดภัยระดับฮาร์ดแวร์ที่ไม่มีการผ่อนปรน

## // CORE.CAPABILITIES
* **[ 100-UNIT NEURAL SWARM ]** : สถาปัตยกรรมซิงโครไนซ์ Agent 100 หน่วยให้ทำงานและตัดสินใจร่วมกันแบบ Swarm Logic
* **[ A2A / MCP BINDING ]** : รันการสื่อสารผ่าน Agent-to-Agent (A2A) Protocol และ Model Context Protocol (MCP) เต็มรูปแบบ
* **[ TIMELINE ROLLBACK ]** : Checkpoint อัจฉริยะ บันทึก State การทำงานและพร้อมทำ Immutable Rollback ทันทีที่ระบบตรวจพบความผิดปกติ
* **[ HARDWARE-LOCKED ENCLAVE ]** : ระบบ Zero-Trust เต็มขั้น บังคับการลงนาม (Code Signing) และยืนยันตัวตนผ่าน Physical Security Key ทุกครั้ง

---

## // FLAT.ARCHITECTURE
`CORE ENVIRONMENT: OPTIMIZED FLAT STRUCTURE`

| MODULE | DESIGNATION | STATUS |
| :--- | :--- | :--- |
| `agents/` | Swarm logic & autonomous execution pathways | `ACTIVE` |
| `protocols/` | A2A and MCP sovereign communication standards | `ACTIVE` |
| `sec_vault/` | Hardware-backed encryption & Zero-trust keys | `LOCKED` |
| `logs/` | Immutable state history & rollback checkpoints | `WRITE-ONLY` |
| `tests/` | Property-based integrity and logic validation | `STANDBY` |

---

## // DEPLOYMENT.PROTOCOL
**CRITICAL REQUIREMENT:** สภาพแวดล้อมการพัฒนาและ Deploy ทั้งหมดถูกจำกัดสิทธิ์ไว้ที่ Drive `C:\` เท่านั้น ห้ามกำหนดพาธไปยังไดรฟ์อื่นโดยเด็ดขาด

```powershell
# 01. INITIALIZE REPOSITORY (STRICTLY ON C:\)
cd C:\
git clone [https://github.com/PTCODELABS/x-ovr-core.git](https://github.com/PTCODELABS/x-ovr-core.git)
cd C:\x-ovr-core

# 02. VERIFY HARDWARE SECURITY
# [!] YubiKey 5 (or authorized hardware key) MUST be inserted for vault decryption
.\sec_vault\verify_hardware_identity.ps1 -RequireKey

# 03. IGNITE THE SWARM
.\system_boot.ps1 --mode sovereign --units 100
