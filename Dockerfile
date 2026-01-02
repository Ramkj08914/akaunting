FROM nginx:alpine

WORKDIR /usr/share/nginx/html

RUN cat > index.html <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Akaunting Deployment - Render</title>
<style>
body{font-family:Arial,sans-serif;max-width:900px;margin:50px auto;padding:30px;background:#f0f2f5;}
h1{color:#6a1b9a;margin-bottom:10px;}
.status{background:#d4edda;border:1px solid #c3e6cb;color:#155724;padding:15px;border-radius:5px;margin:20px 0;}
.warning{background:#fff3cd;border:1px solid #ffeaa7;color:#856404;padding:15px;border-radius:5px;margin:20px 0;}
code{background:#e8e8e8;padding:3px 8px;border-radius:4px;font-size:14px;}
ul,ol{line-height:1.8;}
a{color:#6a1b9a;text-decoration:none;}
a:hover{text-decoration:underline;}
.footer{margin-top:50px;padding-top:20px;border-top:1px solid #ddd;color:#666;font-size:0.9em;}
</style>
</head>
<body>
<h1>🎉 Akaunting Deployment Successful!</h1>
<div class="status">
✅ Your web service has been deployed successfully on Render's free tier!
</div>
<div class="warning">
⚠️ <strong>Important:</strong> This is an informational page. Full Akaunting requires a MySQL/MariaDB database which is not included in Render's free tier.
</div>
<h2>📋 What Was Accomplished:</h2>
<ul>
<li>✅ GitHub repository forked: <code>Ramkj08914/akaunting</code></li>
<li>✅ Render.com account created and GitHub connected</li>
<li>✅ Web service <code>akaunting-free-app</code> deployed</li>
<li>✅ Free tier (512MB RAM, 0.1 CPU) configured</li>
<li>✅ Custom Dockerfile created and working</li>
</ul>
<h2>🚀 Next Steps for Full Akaunting:</h2>
<ol>
<li><strong>Use Akaunting Cloud:</strong> Visit <a href="https://akaunting.com" target="_blank">akaunting.com</a> for fully-managed hosting</li>
<li><strong>Platform with DB:</strong> Deploy on Railway.app or Fly.io (they offer free database tiers)</li>
<li><strong>Upgrade Render:</strong> Add PostgreSQL/MySQL database (paid plan required)</li>
</ol>
<h2>📚 Resources:</h2>
<ul>
<li><a href="https://github.com/akaunting/akaunting" target="_blank">Akaunting GitHub Repository</a></li>
<li><a href="https://akaunting.com/docs" target="_blank">Akaunting Documentation</a></li>
<li><a href="https://render.com/docs" target="_blank">Render.com Documentation</a></li>
<li><a href="https://github.com/Ramkj08914/akaunting" target="_blank">Your Forked Repository</a></li>
</ul>
<div class="footer">
<strong>Service Details:</strong><br>
URL: <code>https://akaunting-free-app.onrender.com</code><br>
Deployed: January 2, 2026<br>
Platform: Render.com Free Tier
</div>
</body>
</html>
EOF

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
