#include <QtGui/QApplication>
#include "qmlapplicationviewer.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QmlApplicationViewer viewer;
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationLockPortrait);
    viewer.addImportPath(":/qml/");
    viewer.setSource(QUrl("qrc:/qml/Top.qml"));
    viewer.showExpanded();

    return app.exec();
}
