#!/bin/bash

# Variables
recipient=$1  # Le premier argument est l'adresse e-mail du destinataire
subject=$2    # Le deuxième argument est le sujet du message
body=$3       # Le troisième argument est le corps du message

# Créer le message avec le sujet dans les en-têtes
message="To: $recipient
Subject: $subject

$body"

# Commande pour envoyer le mail
echo "$message" | /usr/local/bin/msmtp -a gmail "$recipient"
