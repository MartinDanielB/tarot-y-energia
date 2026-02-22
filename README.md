# 🔮 Tarot y Energia — Self-Hosted Platform

![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white)
![Traefik](https://img.shields.io/badge/Traefik-24A1C1?style=flat&logo=traefikproxy&logoColor=white)
![Nginx](https://img.shields.io/badge/Nginx-009639?style=flat&logo=nginx&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=flat&logo=postgresql&logoColor=white)
![Cloudflare](https://img.shields.io/badge/Cloudflare-F38020?style=flat&logo=cloudflare&logoColor=white)

A fully self-hosted tarot reading platform running on a home server with zero monthly hosting costs.

🌐 **Live at:** https://tarot-y-energia.xyz

## Architecture

```
Internet → Cloudflare (SSL + DDoS) → Cloudflare Tunnel → Traefik → Services
                                                               ├── Nginx (website)
                                                               ├── Portainer (management)
                                                               └── PostgreSQL (database, internal only)
```

## Tech Stack

| Layer | Technology | Purpose |
|-------|-----------|---------|
| OS | Kali Linux (WSL2) | Host environment |
| Containers | Docker + Compose | Service orchestration |
| Reverse Proxy | Traefik v3 | Routing + load balancing |
| Web Server | Nginx Alpine | Static site serving |
| Database | PostgreSQL 16 | Reading history + contacts |
| Tunnel | Cloudflare Tunnel | Bypass ISP port restrictions |
| DNS/SSL | Cloudflare | Free SSL + DDoS protection |
| Management | Portainer CE | Container GUI |

## Features

- ✅ Zero monthly hosting cost (runs on home PC)
- ✅ Automatic HTTPS via Cloudflare
- ✅ ISP port restriction bypass via Cloudflare Tunnel
- ✅ Persistent PostgreSQL database with tarot schema
- ✅ Security headers middleware on all routes
- ✅ Rate limiting on all public endpoints
- ✅ Private internal Docker network (DB never exposed)
- ✅ Container auto-restart on failure

## Running Locally

```bash
git clone https://github.com/MartinDanielB/tarot-y-energia.git
cd tarot-y-energia
cp .env.example .env
nano .env
docker compose up -d
```

## Author

**MartinDanielB** — [github.com/MartinDanielB](https://github.com/MartinDanielB)

