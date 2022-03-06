#include "monappli.h"

MonAppli::MonAppli(QObject *parent) : QObject(parent){
    pageEnCours = 0;
}
void MonAppli::changerPage(QString nomPage){
    emit pageAfficher(nomPage);
}
