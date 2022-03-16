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

    MonAppli *core = new MonAppli;

    User *login = new User();

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("_core", core);
    engine.rootContext()->setContextProperty("_User", login);

    engine.load(QStringLiteral("qrc:/main.qml"));

    return app.exec();
}
