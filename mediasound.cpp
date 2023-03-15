#include "mediasound.h"
#include <QDir>

MediaSound::MediaSound(QObject *parent) : QObject(parent)
{
    qDebug() << "MediaSound:_____________-";

    this->m_internalSoundEffectObj = new QSoundEffect();
    //this->m_internalSoundEffectObj->setSource(QUrl::fromUserInput("qrc:/sounds/clicksweeper.wav ")); //Default Value for a button ToDo: Get a Default Sound to be played

    //this->m_wav1 = new QSound("qrc:/sounds/clicksweeper.wav");
    //    this->m_wav2 = new QSound("qrc:/sounds/beep_off_48_Rate.wav");
    m_wav1_file_1 = "qrc:/sounds/clicksweeper.wav";
    m_wav1_file_2 = "qrc:/sounds/beep_off_48_Rate.wav";
    m_wav1_file_3 = "qrc:/sounds/button.wav";

    this->checkForUSBDrive();
}

MediaSound::~MediaSound()
{
    qDebug() << "[MediaSound.cpp]|[~MediaSound()] |"<< " MediaSound destructor" << QString("0x%1").arg((quintptr)this, QT_POINTER_SIZE * 2, 16, QChar('0'));
}

void MediaSound::play1()
{
    this->m_internalSoundEffectObj->setSource(QUrl(m_wav1_file_1));
    this->m_internalSoundEffectObj->play();
    //qDebug() << "MediaSound: counter _____________-"<<QString("0x%1").arg((quintptr)this->m_wav1, QT_POINTER_SIZE * 2, 16, QChar('0'));
    //this->m_wav1 = new QSound(m_wav1_file_1.toString());
    //this->m_wav1->play();
    this->checkForUSBDrive();

}

void MediaSound::play2()
{
    //    this->m_wav1 = m_wav1_file_2.toString();
    //    this->m_wav1->play();

    this->m_internalSoundEffectObj->setSource(QUrl(m_wav1_file_2));
    this->m_internalSoundEffectObj->play();
}

void MediaSound::play3()
{
    this->m_internalSoundEffectObj->setSource(QUrl(m_wav1_file_3));
    this->m_internalSoundEffectObj->play();


    //    static int counter = 0;

    //    qDebug() << "MediaSound: counter _____________-"<<counter;
    //    this->m_wav1 = new QSound(m_wav1_file_3.toString());
    //    this->m_wav1->play();
    //    counter++;
}

void MediaSound::play4()
{
    //this->m_wav2->play();
}

void MediaSound::checkForUSBDrive()
{
    const QDir sounds_directory("/run/media/sda1/testingSounds");
    bool isSoundsDirExists = sounds_directory.exists();
    if(isSoundsDirExists){
        this->setIsSoundsDirExists(isSoundsDirExists);
        qDebug() << "[MediaSound.cpp]|checkForUSBDrive|"<< isSoundsDirExists;

        //Get the WAV Files into a list
        QStringList sound_files_list = sounds_directory.entryList(QStringList() << "*.wav" << "*.WAV",QDir::Files);
        foreach(QString sound_file, sound_files_list) {
            qDebug() << sound_file;
            soundfileLists<< sound_file;
        }
    }


}

QStringList MediaSound::getSoundfileLists() const
{
    return soundfileLists;
}

void MediaSound::setSoundfileLists(const QStringList &value)
{
    soundfileLists = value;
}

void MediaSound::setIsSoundsDirExists(bool isSoundsDirExists)
{
    if(m_isSoundsDirExists != isSoundsDirExists){
        m_isSoundsDirExists = isSoundsDirExists;
        emit soundDirectoryExistenceFlagChanged();
    }
}

bool MediaSound::isSoundsDirExists() const
{
    return m_isSoundsDirExists;
}
