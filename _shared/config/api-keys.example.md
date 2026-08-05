# API Keys — Template

Copy this file to `api-keys.md` in the same folder. `api-keys.md` is gitignored — your key stays local and will never be committed.

---

## USDA Food Data Central

Used by the Dietitian for accurate calorie and protein lookups.

Get a free personal key at: https://fdc.nal.usda.gov/api-key-signup.html

```
USDA_FDC_API_KEY=DEMO_KEY
```

Replace `DEMO_KEY` with your personal key for higher rate limits:
- `DEMO_KEY` — 30 requests/hour, 50/day (fine for occasional use)
- Personal key — 1,000 requests/hour (recommended for daily tracking)
