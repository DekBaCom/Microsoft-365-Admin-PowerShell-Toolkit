
# 🛡️ Microsoft 365 Admin & Security Toolkit 2026

PowerShell Toolkit สำหรับ Microsoft 365  
ออกแบบสำหรับ **Security / IT Admin / Auditor / Microsoft Partner**  
รองรับ Microsoft Graph ปี 2026 (Production Ready)

---

## ✨ Features

✅ Microsoft Graph SDK (ไม่ใช้ AzureAD / MSOnline)  
✅ รองรับ MFA และ Conditional Access  
✅ แยก Module ชัดเจน  
✅ Interactive Menu  
✅ Export CSV + Excel Dashboard  
✅ ใช้งานได้จริงใน Production  

---

## 📦 Included Reports

| Icon | Report | Description |
|------|--------|-------------|
| 👤 | User Offboarding | Disable user, revoke session, remove license |
| 💤 | Inactive Users | ผู้ใช้ไม่ Login เกิน 90 วัน |
| 🎫 | License Usage | ตรวจสอบ License |
| 👑 | Admin Role Review | ตรวจสอบบัญชี Admin |
| 🔐 | PIM Audit | ตรวจสอบการ Activate Role |
| 🔑 | MFA Status | ตรวจสอบ MFA |
| 🌐 | External Sharing | ตรวจสอบ File Sharing |
| 📬 | Mailbox Permission | ตรวจสอบ FullAccess / SendAs |
| 🧱 | Conditional Access | ตรวจสอบ CA Policy |
| 📊 | Excel Dashboard | Dashboard สำหรับผู้บริหาร |

---

## 📊 Dashboard Output

ไฟล์:
```
Reports/M365-Security-Dashboard.xlsx
```

ประกอบด้วย:

- Summary Dashboard
- MFA Coverage Chart
- Admin Exposure
- License Usage
- External Sharing Activity
- PIM Timeline

เหมาะสำหรับ:

- 👨‍💼 CISO
- 👩‍💼 IT Manager
- 🔐 Security Team
- 🧾 Auditor

---

## 🧱 Project Structure

```
M365-Admin-Toolkit
│
├── Main.ps1
├── Modules
│   ├── Connect-M365.psm1
│   ├── User-Offboarding.psm1
│   ├── Inactive-Users.psm1
│   ├── License-Report.psm1
│   ├── Admin-Role-Review.psm1
│   ├── PIM-Audit.psm1
│   ├── MFA-Status.psm1
│   ├── External-Sharing.psm1
│   ├── Mailbox-Permission.psm1
│   ├── Conditional-Access.psm1
│   └── Export-ExcelDashboard.psm1
│
└── Reports
```

---

## 🔐 Required Permissions

```
User.Read.All
Directory.Read.All
AuditLog.Read.All
Reports.Read.All
Policy.Read.All
RoleManagement.Read.Directory
Group.Read.All
```

แนะนำสิทธิ์:
- Global Admin
- Security Admin
- Compliance Admin

---

## ⚙️ Prerequisites

### PowerShell
- Windows PowerShell 5.1+
- PowerShell 7+

### Required Modules

```powershell
Install-Module Microsoft.Graph -Scope CurrentUser
Install-Module ExchangeOnlineManagement
Install-Module ImportExcel
```

---
## ⚠️ Before run script 

- หาก run error ต้องเปิด Unified Audit Log ก่อนใช้งาน
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
- หากยังคง Error 
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

---

## ▶️ How to Run

```powershell
cd M365-Admin-Toolkit
.\Main.ps1
```

ระบบจะเชื่อมต่อ:

- Microsoft Graph (รองรับ MFA)
- Exchange Online

---

## 📋 Main Menu

```
1. User Offboarding
2. Inactive Users
3. License Report
4. Admin Role Review
5. PIM Activation Audit
6. MFA Status Report
7. External Sharing Audit
8. Mailbox Permission Review
9. Conditional Access Report
10. Export Excel Dashboard
0. Exit
```

---

## 🚀 Roadmap

- 🔥 Admin Without MFA Risk Score
- 🔥 Conditional Access Gap Analysis
- 🔥 Group Drift Detection
- 🔥 Scheduled Report
- 🔥 Email Summary
- 🔥 Power BI / Fabric Integration
- 🔥 Microsoft Sentinel Connector

---

## ⚠️ Important Notes

- ต้องเปิด Unified Audit Log ก่อนใช้งาน

```
Microsoft Purview
→ Audit
→ Turn on auditing
```

- ข้อมูล Audit อาจ Delay สูงสุด 24 ชั่วโมง

---

## 🚀 Contribute

- 🔥 Mr.Abdulloh Etaeluengoh
- 🔥Email : Abdulloh.eg@gmail.com
- 🔥Blogger : https://ilikeit.info
- 🔥Linkein : Abdulloh Etaeluengoh

---

## 📄 License

MIT License  
Free for personal and commercial use.

---

🛡️ **Secure smarter. Audit faster. Automate everything.**
