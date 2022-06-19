#include <QQmlContext>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "./includes/taskmodel.h"


int main(int argc, char *argv[]){

#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
  QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

  QGuiApplication app(argc, argv);

  QQmlApplicationEngine engine;
  TaskModel tmodel;

  const QUrl url(QStringLiteral("qrc:/main.qml"));
  QObject::connect(
    &engine,
    &QQmlApplicationEngine::objectCreated,
    &app,
    [url](QObject *obj, const QUrl &objUrl) {
      if (!obj && url == objUrl) QCoreApplication::exit(-1);
    },
    Qt::QueuedConnection);

  QQmlContext context = engine.rootContext();
  context.setContextProperty("taskmodel", &tmodel);

  engine.load(url);
  return app.exec();
}
