#ifndef CALCULATOR_H
#define CALCULATOR_H

#include <QObject>

class Calculator : public QObject {
    Q_OBJECT
    Q_PROPERTY(QString display READ display NOTIFY displayChanged)

public:
    explicit Calculator(QObject *parent = nullptr);
    QString display() const;

    Q_INVOKABLE void appendNumber(const QString &number);
    Q_INVOKABLE void appendOperator(const QString &op);
    Q_INVOKABLE void calculate();
    Q_INVOKABLE void clear();

signals:
    void displayChanged();

private:
    QString m_display;
    QString m_previousValue;
    QString m_operator;
};

#endif // CALCULATOR_H
