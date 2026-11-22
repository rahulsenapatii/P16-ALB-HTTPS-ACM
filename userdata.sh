#!/bin/bash
dnf install -y nginx
systemctl enable --now nginx
echo "<h1>Project 16: HTTPS Secured via AWS ACM & ALB - Rahul Senapati</h1>" > /usr/share/nginx/html/index.html
