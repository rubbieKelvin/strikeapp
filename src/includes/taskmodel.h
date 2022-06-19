#ifndef TASKMODEL_H
#define TASKMODEL_H

#include <QObject>

class TaskModel : public QObject
{
  Q_OBJECT
public:
  explicit TaskModel(QObject *parent = nullptr);

signals:

};

#endif // TASKMODEL_H
