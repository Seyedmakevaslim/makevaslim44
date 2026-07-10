#!/bin/sh

# جایگزینی پورت داینامیک ریلوِی با کلمه کلیدی در کانفیگ
sed -i "s/PORT_NUMBER/${PORT}/g" /etc/xray/config.json

# نمایش کانفیگ در لاگ ریلوِی برای اطمینان از درست بودن پورت
echo "Starting Xray with dynamic port: ${PORT}"

# اجرای هسته ایکس‌ری
/usr/bin/xray -config /etc/xray/config.json
