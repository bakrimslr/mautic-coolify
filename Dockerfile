# استخدام نسخة Mautic الرسمية
FROM mautic/mautic:7-apache

# تغيير المستخدم إلى root لحل مشاكل الصلاحيات مع المجلدات الدائمة
USER root

# إعادة تعيين الصلاحيات الصحيحة لمجلد العمل والتأكد من فتحها
RUN chown -R www-data:www-data /var/www/html

# فتح المنفذ 80
EXPOSE 80
