#!/bin/sh
/var/www/html/occ app:install notify_push
/var/www/html/occ config:app:set notify_push base_endpoint --value="https://{{ .Values.nextcloud.host }}{{ .Values.notifyPush.ingress.path }}"
# /var/www/html/occ notify_push:setup "https://{{ .Values.nextcloud.host }}{{ .Values.notifyPush.ingress.path }}"
