# API contracts — Supplier Risk Dashboard

The OpenAPI document is the authoritative contract: Swagger UI at `/docs`, raw document at `/openapi.json`. This table is the summary.

| Method | Path | Purpose | Response |
| --- | --- | --- | --- |
| `GET` | `/health` | Liveness probe used by the deploy pipeline | `{"status": "ok"}` |
| `GET` | `/api/dashboards` | List dashboards; `?status=` filters | `Dashboard[]` |
| `POST` | `/api/dashboards` | Create a dashboard | `201` + `Dashboard` |
| `GET` | `/api/dashboards/{id}` | Fetch one dashboard | `Dashboard` or `404` |
| `PATCH` | `/api/dashboards/{id}` | Partial update | `Dashboard` or `404` |
| `DELETE` | `/api/dashboards/{id}` | Remove a dashboard | `204` or `404` |

## `Dashboard`

| Field | Type | Notes |
| --- | --- | --- |
| `id` | integer | Server assigned |
| `title` | string | Required, 1–400 characters |
| `reference` | string | Optional, up to 200 characters |
| `status` | enum | `new`, `in-progress`, `complete` |
| `priority` | enum | `low`, `normal`, `high` |
