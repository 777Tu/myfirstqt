#include "calculator.h"

Calculator::Calculator(QObject *parent)
    : QObject(parent), m_display("0"), m_previousValue(""), m_operator("")
{
}

QString Calculator::display() const {
    return m_display;
}

void Calculator::appendNumber(const QString &number) {
    if (m_display == "0") {
        m_display = number;
    } else {
        m_display += number;
    }
    emit displayChanged();
}

void Calculator::appendOperator(const QString &op) {
    m_previousValue = m_display;
    m_operator = op;
    m_display = "0";
    emit displayChanged();
}

void Calculator::calculate() {
    double result = 0;
    double current = m_display.toDouble();
    double previous = m_previousValue.toDouble();
    
    if (m_operator == "+") result = previous + current;
    else if (m_operator == "-") result = previous - current;
    else if (m_operator == "*") result = previous * current;
    else if (m_operator == "/") result = current != 0 ? previous / current : 0;
    
    m_display = QString::number(result);
    m_operator = "";
    m_previousValue = "";
    emit displayChanged();
}

void Calculator::clear() {
    m_display = "0";
    m_previousValue = "";
    m_operator = "";
    emit displayChanged();
}
