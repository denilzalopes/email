#!/bin/bash

# Variables
recipient=$1  # Le premier argument est l'adresse e-mail du destinataire
subject=$2    # Le deuxième argument est le sujet du message
body=$3       # Le troisième argument est le corps du message

# Créer le contenu de l'email avec les en-têtes nécessaires
email_content="Subject: $subject\n\n$body"

# Commande pour envoyer le mail
echo -e "$email_content" | msmtp -a zimbra "$recipient"
