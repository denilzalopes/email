import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

# Paramètres de connexion SMTP
smtp_server = "smtp.univ-paris8.fr"
smtp_port = 587  # Port pour STARTTLS
username = ""
password = ""

# Informations sur l'email
from_email = ""
to_emails = ["", "", ""]
subject = "Test Email Python"
body = """Il s'agit d'un e-mail de test envoyé depuis Python à l'aide du serveur SMTP Zimbra avec STARTTLS."""

# Création du message
msg = MIMEMultipart()
msg['From'] = from_email
msg['To'] = ", ".join(to_emails)
msg['Subject'] = subject

msg.attach(MIMEText(body, 'plain'))

try:
    # Connexion au serveur SMTP avec STARTTLS
    server = smtplib.SMTP(smtp_server, smtp_port)
    server.starttls()  # Démarrer le chiffrement TLS
    server.login(username, password)
    
    # Envoi de l'email
    server.sendmail(from_email, to_emails, msg.as_string())
    
    print("Email sent successfully.")
except Exception as e:
    print(f"Error sending email: {e}")
finally:
    if server:
        server.quit()
