# 21 Günlük Koçluk — statik bilgi sayfaları (gizlilik, veri silme)
# Coolify: Dockerfile tipinde kaynak, domain 21gun.bilgem.cloud, port 80
FROM nginx:alpine

COPY index.html      /usr/share/nginx/html/index.html
COPY gizlilik.html   /usr/share/nginx/html/gizlilik.html
COPY veri-silme.html /usr/share/nginx/html/veri-silme.html
COPY nginx.conf      /etc/nginx/conf.d/default.conf

EXPOSE 80
