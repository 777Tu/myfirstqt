#include <QApplication>
#include <QLabel>
int main(int argc, char *argv[]){
    QApplication app(argc, argv);
    QLabel label("Oga SDB dey work for Android!");
    label.resize(300,100);
    label.show();
    return app.exec();
}
