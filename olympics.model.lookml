- connection: sentry

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: medalists

- explore: top_athletes

- persist_for: 99999 hours