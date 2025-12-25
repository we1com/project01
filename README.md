# Project Management & Infrastructure 2025

## 1. Жобаны жоспарлау (Management)
* **Әдістеме:** Scrum
* **Құралдар:** GitHub Projects
* **Спринттер:** 2 апталық циклдер

## 2. Технологиялық стек
* **Frontend:** Next.js
* **Backend:** Go
* **Инфрақұрылым:** Docker, Kubernetes, Terraform

## 3. Архитектуралық диаграмма
```mermaid
graph TD
    User((Пайдаланушы)) --> FE[Next.js]
    FE --> BE[Go API]
    BE --> DB[(PostgreSQL)]
    CI[GitHub Actions] --> Docker[Docker Image]
