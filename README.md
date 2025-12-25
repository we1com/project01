## 4. Архитектуралық диаграмма
```mermaid
graph TD
    User((Пайдаланушы)) --> FE[Frontend: Next.js]
    FE --> BE[API: Go]
    BE --> DB[(PostgreSQL)]
    BE -.-> Mon[Monitoring: Grafana]
    CI[CI/CD: GitHub Actions] --> Deploy[Deploy: Docker]# project01
