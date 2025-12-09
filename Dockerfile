FROM mautic/mautic:5-apache

# Tell Mautic we'll configure cron ourselves later
ENV MAUTIC_RUN_CRON_JOBS=false

# Render expects the app to listen on port 10000
ENV PORT=10000

# Apache listens on 80 inside the container; Render will map 10000 -> 80
EXPOSE 80
