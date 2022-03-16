#include "monappli.h"

MonAppli::MonAppli(QObject *parent) : QObject(parent){
    pageEnCours = 0;
}
void MonAppli::changerPage(QString nomPage){
    actualPage = nomPage;

    emit pageAfficher(nomPage);
}

void MonAppli::disconnect(QString targetPage){
   username = prenom = nom = dateNaissance = genre = poids = NULL;
   isConnected = 0;
   changerPage(targetPage);
}

QString MonAppli::getActualPage(){
    return actualPage;
}
