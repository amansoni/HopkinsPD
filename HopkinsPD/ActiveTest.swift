//
// Created by Soni, Aman (Student) on 26/03/2015.
// Copyright (c) 2015 Aston University. All rights reserved.
//

import Foundation

class ActiveTest {

    enum ActiveTestTypes: Int {
        case Audio = 1, Balance, Gait, Dexterity, Reaction, RestTremor, PosturalTremor
    }

    enum ActiveTestStatus {
        case Preparation, Starting, Pause, Running, Stopping, Finished
    }

    var testNumber = ActiveTestTypes.Audio;
    var testStatus = ActiveTestStatus.Preparation;
    var outputFiles: [String:String] = ["Accelerometer": "accel_file", "MagneticCompass": "magcomp_file"];

    func getCurrentTest() {
        return testNumber;
    }

    func doTask() {
        switch testStatus {
        case .Preparation:
            testStatus = .Starting;

        }
        return testNumber;
    }

}
