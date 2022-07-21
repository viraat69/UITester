#include "mediasound.h"

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
