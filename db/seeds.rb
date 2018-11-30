User.destroy_all
Log.destroy_all

# Sample user with two logs
user1 = User.create(name: 'violet', email: 'vi@me.com', password: 'hi', avatar: 'https://bit.ly/2rbu2F6', birthday: '1996-03-01')

log1 = Log.create(user: user1, mental_rating: 2, mental_note: 'I felt really overwhelmed',
    emotional_rating: 2, emotional_note: 'I felt disregulated because lots of thinking',
    physical_rating: 4, physical_note: 'My body did not hurt as much today',
    spiritual_rating: 3, spiritual_note: 'I had hope despite difficulties')

log2 = Log.create(user: user1, mental_rating: 4, mental_note: 'My mind was a little foggy but I felt confident',
    emotional_rating: 5, emotional_note: 'I felt great today',
    physical_rating: 3, physical_note: 'Only mild body pain',
    spiritual_rating: 1, spiritual_note: 'This area felt fairly vacant today')

TimedLog.create(user: user1, time: '03:47:21')
