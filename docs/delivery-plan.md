# Delivery plan — Supplier Risk Dashboard

Sprints are two weeks. Each sprint closes with a demo and an approval gate.

| Sprint | Focus | Exit criteria |
| --- | --- | --- |
| Sprint 1 | Foundation: repo, pipelines, schema | CI green, API deployed |
| Sprint 2 | Core scope | Approved user stories delivered |
| Sprint 3 | Hardening and release | Tests pass, release gate approved |

## Approved scope

- Supplier List Display (Epic 1, Feature 1.1)
- Risk Indicators (Epic 1, Feature 1.2)
- Data Integration (Epic 2, Feature 2.1)
- AI-generated Risk Explanations & Suggested Actions (Epic 1, Feature 1.3)
- `src/api/suppliers.js`
- `src/api/risks.js`
- `src/api/aiRiskExplanation.js`
- Implement REST endpoints for:
- `/suppliers`: Returns supplier list with basic details.
- `/risks`: Returns risk indicators for each supplier.
- `/ai-risk-explanation`: Returns AI-generated explanations and suggested actions for risks.
- Integrate mock data sources for supplier and procurement data (to be replaced with real APIs).
