#!/bin/sh

viewcert(){
openssl x509 -in $1 --serial --subject --issuer --dates --fingerprint --noout -nameopt multiline -purpose
}
# Use lf to switch directories and bind it to ctrl-o

viewreq(){
openssl req -in $1  --subject  --noout -nameopt multiline 
}
# Use lf to switch directories and bind it to ctrl-o
case "$1" in
    *.tar*) tar tf "$1";;
    *.zip) unzip -l "$1";;
    *.rar) unrar l "$1";;
    *.7z) 7z l "$1";;
    *.pdf) pdftotext "$1" -;;
    *.cert|*.crt) viewcert "$1" -;;
#    *.jpeg|*.jpg|*.png) fim "$1" ;;
    *) highlight -O ansi "$1" || cat "$1";;
esac
