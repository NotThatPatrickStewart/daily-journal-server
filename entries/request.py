import sqlite3
import json
from models import Entries
from models import Mood

def get_all_entries():
    with sqlite3.connect("./dailyjournal.db") as conn:
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        SELECT
            e.id,
            e.concept,
            e.entry,
            e.date,
            e.moodId,
            m.id moodId,
            m.label
        FROM entries e
        JOIN mood m
            ON m.id = e.moodId
        """)
        
        entries = []

        dataset = db_cursor.fetchall()

        for row in dataset:

            entry = Entries(row['id'], row['concept'], row['entry'],
                            row['date'], row['moodId'], )
            
            mood = Moods(row['id'], row['label'], )
            entry.mood = mood.__dict__

            entries.append(animal.__dict__)
    
    return json.dumps(entries)

def get_single_entry():
    with sqlite3.connect("./dailyjournal.db") as conn:
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        SELECT
            e.id,
            e.concept,
            e.entry,
            e.date,
            e.moodId,
            m.id moodId,
            m.label
        FROM entries e
        JOIN mood m
            ON m.id = e.moodId
        """, ( id, ))
        
        data = db_cursor.fetchone()

        entry = Entries(data['id'], data['concept'], data['entry'],
                        data['date'], data['moodId'], )
        
        mood = Moods(data['id'], data['label'], )
        entry.mood = mood.__dict__
    
        return json.dumps(entry.__dict__)