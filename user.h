#ifndef USER_H
#define USER_H

#include <QObject>
#include <QUrlQuery>
#include <QNetworkReply>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QObject>
class User : public QObject{
    Q_OBJECT

    public:
       explicit User(QObject *parent = nullptr);
       Q_INVOKABLE void newConnexion(QString login,QString password, QString queryURL =  "http://slimapi.fr/login/connect");
        ~User();
    public slots:
        void getRequestReply(QNetworkReply *reply);
    signals:
        void loginResult(QString response);
    protected:
        QNetworkAccessManager *manager = new QNetworkAccessManager();


};

#endif // USER_H
