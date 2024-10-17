#!/bin/bash

# Variables
USERNAME=""
PASSWORD=""  # Utilisez un mot de passe d'application généré comme précédemment

# Debugging : Afficher les variables
echo "Username: $USERNAME"

# Configuration de fetchmail
echo "poll pop.gmail.com with proto POP3 user '$USERNAME' password '$PASSWORD' is '$USERNAME' here options ssl" > ~/.fetchmailrc

# Définir les permissions correctes pour .fetchmailrc
chmod 600 ~/.fetchmailrc

# Debugging : Afficher le contenu de .fetchmailrc
cat ~/.fetchmailrc

# Commande pour récupérer les emails
fetchmail -v > fetchmail_output.txt 2>&1

# Afficher le résultat
cat fetchmail_output.txt
