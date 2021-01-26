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

