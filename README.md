# Project 16: Enable HTTPS using ACM

Secures web traffic in `ap-south-1` using an AWS Application Load Balancer (ALB) with an HTTPS (443) listener backed by an AWS Certificate Manager (ACM) SSL/TLS certificate while completely blocking unencrypted HTTP (80) access.

## Security Controls
- **ACM Certificate:** Imported X.509 certificate attached to ALB HTTPS listener (`443`).
- **HTTP Blocked:** No port `80` listener on the ALB and no port `80` ingress rule on `p16-alb-sg`.
- **Backend Isolation:** Backend EC2 instance accepts traffic exclusively from `p16-alb-sg` with no public SSH ports open.
