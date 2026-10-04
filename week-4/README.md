# Week 4, Docker Compose with PostgreSQL

## What this does
Runs the incident tracker and a PostgreSQL database as a two-service Compose stack, with data persisted in a named volume.

## Requirements
- Docker Compose
- A `.env` file in `week-4/` (copy `.env.example` and fill in real values)

## Run it
\`\`\`
docker compose up -d --build
\`\`\`
cd ..
git checkout -b add-k8s-manifests
git add week-4/*.yaml week-4/README.md
git commit -m "feat: add kubernetes manifests generated from compose"
git push origin add-k8s-manifests
gh pr create --fill
gh pr merge --merge --delete-branch
git checkout master
git pull origin master
git branch -d add-k8s-manifests
## Verify
\`\`\`
docker compose ps
\`\`\`
Or visit http://localhost:8080 in a browser.

## Stop it
\`\`\`
docker compose down
\`\`\`
Add `-v` only if you want to delete the database volume along with the containers.
