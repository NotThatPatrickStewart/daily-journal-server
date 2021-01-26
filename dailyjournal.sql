CREATE TABLE `Entries` (
    'id'    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `concept`  TEXT NOT NULL,
    `entry`   TEXT NOT NULL,
    `date`  INTEGER NOT NULL,
    `moodId`    INTEGER NOT NULL,
    FOREIGN KEY(`moodId`) REFERENCES `Moods`(`id`)
);

CREATE TABLE `Moods` (
    'id'    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `label`  TEXT NOT NULL
);

INSERT INTO `Moods` VALUES (null, `Happy`)
INSERT INTO `Moods` VALUES (null, `Sad`)
INSERT INTO `Moods` VALUES (null, `Overwhelmed`)
INSERT INTO `Moods` VALUES (null, `Frustrated`)
INSERT INTO `Moods` VALUES (null, `Distracted`)
INSERT INTO `Moods` VALUES (null, `Froopy`)
INSERT INTO `Moods` VALUES (null, `*Shrug*`)

INSERT INTO `Entries` VALUES (null, "JavaScript", "Shit's hard!", 1598557373697, 4)
INSERT INTO `Entries` VALUES (null, "React", "LOL WUT", 1598557358781, 7)
INSERT INTO `Entries` VALUES (null, "Pythin", "Less hard!", 1598458559152, 6)
