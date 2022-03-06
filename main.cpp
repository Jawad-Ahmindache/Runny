#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "QDebug"
#include "monappli.h"
#include "user.h"
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    qputenv("QT_STYLE_OVERRIDE","Styles");

    MonAppli p;

    User *test = new User();

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("monObjet", &p);
    engine.rootContext()->setContextProperty("_User", test);

    engine.load(QStringLiteral("qrc:/main.qml"));

    return app.exec();
}
