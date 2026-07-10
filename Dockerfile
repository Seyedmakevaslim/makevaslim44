FROM teddysun/xray:latest

# اطمینان از داشتن دسترسی کامل برای تغییر فایل کانفیگ
USER root

COPY config.json /etc/xray/config.json
COPY start.sh /start.sh

# دادن دسترسی اجرایی به اسکریپت
RUN chmod +x /start.sh

CMD ["/start.sh"]
