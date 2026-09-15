#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "calculator.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    
    Calculator calc;
    
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("calculator", &calc);
    
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    engine.load(url);
    
    if (engine.rootObjects().isEmpty())
        return -1;
    
    return app.exec();
}
