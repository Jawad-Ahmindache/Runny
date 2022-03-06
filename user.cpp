#include "user.h"

User::User(QObject *parent) : QObject(parent)
{
    QObject::connect(manager, SIGNAL(finished(QNetworkReply*)),this, SLOT(getRequestReply(QNetworkReply*)));

}
void User::newConnexion(QString login, QString password,QString queryURL){
    QNetworkRequest request;
    request.setUrl(queryURL);
    request.setHeader(QNetworkRequest::ContentTypeHeader,
        "application/x-www-form-urlencoded");

    QUrlQuery postData;
    postData.addQueryItem("login", login);
    postData.addQueryItem("mdp", password);
    manager->post(request, postData.toString(QUrl::FullyEncoded).toUtf8());


}

User::~User(){


}
void User::getRequestReply(QNetworkReply *reply){
      QString response = reply->readAll();
      emit loginResult(response);
}

