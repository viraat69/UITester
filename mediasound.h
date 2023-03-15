#ifndef MEDIASOUND_H
#define MEDIASOUND_H

#include <QObject>
#include <QMediaPlayer>
#include <QSound>
#include <QString>
#include <QUrl>
#include <QSoundEffect>


class MediaSound : public QObject
{
    Q_OBJECT
public:
    explicit MediaSound(QObject *parent = 0);
    ~MediaSound();

    Q_PROPERTY(bool soundDirectoryExistenceFlag READ isSoundsDirExists WRITE setIsSoundsDirExists NOTIFY soundDirectoryExistenceFlagChanged)
    Q_PROPERTY(QStringList soundfileLists READ getSoundfileLists WRITE setSoundfileLists NOTIFY soundfileListsChanged)

    Q_INVOKABLE void play1();
    Q_INVOKABLE void play2();
    Q_INVOKABLE void play3();
    Q_INVOKABLE void play4();

    QSound *m_wav1;
    QSound *m_wav2;

    void checkForUSBDrive();


    QSoundEffect* m_internalSoundEffectObj; //Internal Object to media source class

    QUrl m_wav1_file_1;
    QUrl m_wav1_file_2;
    QUrl m_wav1_file_3;

    //Boolean flag to check if directory exists
    bool m_isSoundsDirExists;

    QStringList soundfileLists;

    bool isSoundsDirExists() const;

    void setIsSoundsDirExists(bool isSoundsDirExists);

    QStringList getSoundfileLists() const;
    void setSoundfileLists(const QStringList &value);

signals:
    void soundDirectoryExistenceFlagChanged();
    void soundfileListsChanged();

};

#endif // MEDIASOUND_H
