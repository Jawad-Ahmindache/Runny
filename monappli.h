#ifndef MONAPPLI_H
#define MONAPPLI_H
#include <QObject>
class MonAppli : public QObject
{
    Q_OBJECT
public:
    explicit MonAppli(QObject *parent = nullptr);
    Q_INVOKABLE void changerPage(QString nomPage);
signals:
    void pageAfficher(QString nomPage);
private:
    int pageEnCours;
};

#endif // MONAPPLI_H
