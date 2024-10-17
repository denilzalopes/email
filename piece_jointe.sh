#!/bin/bash

# Variables
recipient="$1"        # Le premier argument est l'adresse e-mail du 
destinataire
subject="$2"          # Le deuxième argument est le sujet du message
body="$3"             # Le troisième argument est le corps du message
attachment="$4"       # Le quatrième argument est le chemin vers la pièce 
jointe

# Vérifier si le fichier de pièce jointe existe
if [ -f "$attachment" ]; then
    # Envoyer l'e-mail avec la pièce jointe
    echo "$body" | /usr/local/bin/mpack -s "$subject" "$attachment" 
"$recipient"
else
    echo "Attachment file not found: $attachment"
fi

