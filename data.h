#ifndef DATA_H
#define DATA_H

#include <admesh/stl.h>
#include <QVector3D>
#include <libintl.h>
#include <locale.h>
#include <QString>
#define N_(String) String
inline char * _( const char * msgid ) { return gettext( msgid ); }
inline QString _( const char *msgid, int category )
{
    Q_UNUSED( category );
    return QString::fromUtf8( _( msgid ) );
}

#define DEFAULT_RES_X 960
#define DEFAULT_RES_Y 640

#define AXIS_SIZE 500.0f
#define MIN_ZOOM 0.01f
#define MAX_ZOOM 500.0f
#define ZOOM_SPEED 10.0f
#define PERSPECTIVE 50.0f
#define MIN_VIEW_DISTANCE 0.01f
#define MAX_VIEW_DISTANCE 10000.0f

#define GREEN QVector3D(0.0,1.0,0.0)
#define RED QVector3D(1.0,0.0,0.0)
#define BLUE QVector3D(0.0,0.0,1.0)
#define BLACK QVector3D(0.0,0.0,0.0)

#endif // DATA_H
