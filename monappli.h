#ifndef MONAPPLI_H
#define MONAPPLI_H
#include <QObject>
class MonAppli : public QObject
{
    Q_OBJECT
public:
    explicit MonAppli(QObject *parent = nullptr);
    Q_INVOKABLE void changerPage(QString nomPage);
    Q_INVOKABLE  void disconnect(QString targetPage = "chargement.qml");
    Q_INVOKABLE QString getActualPage();

signals:
    void pageAfficher(QString nomPage);
private:
    int pageEnCours;
    bool isConnected = 0;
    QString actualPage = "connexion.qml";
    QString username;
    QString prenom;
    QString nom;
    QString dateNaissance;
    QString genre;
    QString poids;

};

#endif // MONAPPLI_H
