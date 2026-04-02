# IT Service Executive Dashboard 2026

A modern, interactive IT Service Management (ITSM) dashboard built with Vanilla JS, Tailwind CSS, and Chart.js. Designed for executive-level insights and operational intelligence.

## Features
- **Strategic Health Overview:** Real-time KPI tracking for Ticket Volume, Closed Rate, and SLA Success.
- **Cross-Filtering:** Interactive charts that act as filters for the entire dashboard.
- **Live Service Data:** Detailed feed of service records with clickable modal views.
- **Root Cause Analysis:** Visual insights into the most frequent technical issues.
- **Executive UI:** Pastel-themed design with smooth animations and high readability.

## Tech Stack
- **Frontend:** HTML5, CSS3 (Tailwind CSS via CDN)
- **Visualization:** Chart.js
- **Icons:** Font Awesome 6
- **Fonts:** Plus Jakarta Sans

## Getting Started
1. Clone the repository.
2. Ensure `data.json` or `data.js` is present in the root directory.
3. Open `index.html` in any modern web browser.

## Data Structure
The dashboard expects data in the following format:
```json
{
    "ID": "INC-XXXXXX",
    "Module": "Incident/Request",
    "Subject": "Problem Description",
    "Status": "Closed/Resolved",
    "BU Name": "Business Unit",
    "Resolved Date": "YYYY-MM-DD HH:mm:ss",
    "Resolution Notes": "Cause :: ..., How to fixed :: ..."
}
```

---
*Developed for Central Group IT Operations & Service Management.*
