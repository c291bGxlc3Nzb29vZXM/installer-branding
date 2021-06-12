/* === This file is part of Calamares - <https://github.com/calamares> ===
 *
 *   Copyright 2015, Teo Mrnjavac <teo@kde.org>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   Calamares is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Calamares. If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    Timer {
        id: advanceTimer
        interval: 5000
        running: false
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }
    
    Slide {
        anchors.fill: parent

        Image {
            id: background
            source: "1.png"
            anchors.fill: parent
        
            Text {
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: -125
                font.pixelSize: parent.width *.015
                color: 'black'
                text: qsTr("Welcome to pearOS installer<br/>"+
                    "Use the left <b>mouse button</b> to go to the next slide, right for previous.<br/>"+
                    "After creating your chosen disk setup in the first 10 % <br/>"+
                    "the full copying of the ISO will take the longest of this install phase <br/>"+
                    "and will run until approximately 30%.<br/>")
                wrapMode: Text.WordWrap
                width: 500
                horizontalAlignment: Text.AlignLeft
            }
        }
    }

    Slide {
        anchors.fill: parent

        Image {
            id: background1
            source: "2.png"
            anchors.fill: parent

            Text {
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: 250
                font.pixelSize: parent.width *.015
                color: 'black'
                text: qsTr("Are you ready for a smooth Linux experience?<br/>"+
                    "This OS contains everything you need for day to day usage, <br/>"+
                    "support for development applications, like Android Studio,<br/>"+
                    "Visual Studio Code, and much more<br/>")
                wrapMode: Text.WordWrap
                width: 450
                horizontalAlignment: Text.AlignLeft
            }
        }
    }

    Slide {
        anchors.fill: parent

        Image {
            id: background2
            source: "3.png"
            anchors.fill: parent

            Text {
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: -100
                font.pixelSize: parent.width *.015
                color: 'black'
                text: qsTr("The package manager is APT<br/>"+
                    "Install apps using 'sudo apt install <package name>'. <br/>"+
                    "for example, sudo apt install obs-studio<br/>")
                wrapMode: Text.WordWrap
                width: 450
                horizontalAlignment: Text.AlignLeft
            }
        }
    }
    
    Slide {
        anchors.fill: parent

        Image {
            id: background3
            source: "4.png"
            anchors.fill: parent

            Text {
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: 250
                font.pixelSize: parent.width *.015
                color: 'black'
                text: qsTr("There are two browsers included in pearOS <br/>"+
                    "Mozilla Firefox, for stability and daily usage, <br/>"+
                    "and Pafari for macOS look and feel <br/>")
                wrapMode: Text.WordWrap
                width: 450
                horizontalAlignment: Text.AlignLeft
            }
        }
    }
    
    Slide {
        anchors.fill: parent

        Image {
            id: background4
            source: "5.png"
            anchors.fill: parent

            Text {
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: -200
                font.pixelSize: parent.width *.015
                color: 'black'
                text: qsTr("It has the latest stable Linux kernel, 5.10<br/>")
                wrapMode: Text.WordWrap
                width: 450
                horizontalAlignment: Text.Center
            }
        }
    }
    
    Slide {
        anchors.fill: parent

        Image {
            id: background5
            source: "6.png"
            anchors.fill: parent

            Text {
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: 250
                font.pixelSize: parent.width *.015
                color: 'black'
                text: qsTr("It is based on NiceC0re (debian+ ubuntu repos+ kde desktop+ pear UI)")
                wrapMode: Text.WordWrap
                width: 450
                horizontalAlignment: Text.Center
            }
        }
    }

    Component.onCompleted: advanceTimer.running = true
}
