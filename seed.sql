DROP TABLE IF EXISTS video;

CREATE TABLE video(
  id SERIAL PRIMARY KEY,
  title VARCHAR,
  description TEXT,
  url VARCHAR
);

INSERT INTO video (title, description, url) VALUES ('How to tie a shoe lace in once second','In this video the youtuber "MrYazzyB" demonstrates on a pair of shoes, a way to tie shoelaces in one second.', 'https://www.youtube.com/embed/wMuNjnNyaiA');
INSERT INTO video (title, description, url) VALUES ('New Shoes', 'In this short animated youtube video, animator "Domics" comedically animates his experiences after buying new shoes.', 'https://www.youtube.com/embed/xw_FiF0Z6GA');
INSERT INTO video (title, description, url) VALUES ('Top 8 Life Hacks for shoes', 'In this video the Youtuber "Life Hacks" shows the viewer eight interesting life hacks that can be performed with a pair of shoes.', 'https://www.youtube.com/embed/bpqPCnxle1E');