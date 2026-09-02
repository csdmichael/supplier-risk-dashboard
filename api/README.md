# Supplier Risk Dashboard — API

FastAPI service. Owns validation, authorization, and all database access.

| Path | Purpose |
| --- | --- |
| `/health` | Liveness probe |
| `/docs` | Swagger UI |
| `/openapi.json` | OpenAPI document |
| `/api/dashboards` | Dashboards collection (GET, POST) |
| `/api/dashboards/{id}` | Single dashboard (GET, PATCH, DELETE) |
