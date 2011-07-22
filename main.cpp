#include <QtGui/QApplication>
#include "qmlapplicationviewer.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QmlApplicationViewer viewer;
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationLockPortrait);
    viewer.addImportPath(":/");
    viewer.setMainQmlFile(":/Top.qml");
    viewer.showExpanded();

    return app.exec();
}
