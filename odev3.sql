                --ÖDEV 3 ÇALIŞMASI


                              --SORU1
--USA” ülkesine ait, 2009 yılı içerisinde oluşturulmuş tüm faturaların (Invoice) toplamını listeleyen bir sorgu yazınız.
--tabloyu bul
SELECT * FROM invoice

--colonları incele
SELECT column_name
FROM information_schema.columns
WHERE table_name = 'invoice';

                    --CEVAP 1
--filtreleme yap
SELECT SUM(total) AS total_invoice_amount
FROM invoice
WHERE billing_country = 'USA'
AND EXTRACT(YEAR FROM invoice_date) = 2009;

                          -- SORU2
--Tüm parça (track) bilgilerini, bu parçaların ait olduğu playlisttrack ve playlist tablolarıyla birleştirerek (JOIN) listeleyen bir sorgu yazınız.

--tabloları incele
SELECT *FROM track
SELECT *FROM playlist
SELECT *FROM playlisttrack

                     --CEVAP2
--takma ad ile çagır ve joın ile birleştir
SELECT t.*
FROM track t
JOIN playlisttrack plt ON t.track_id = plt.track_id
JOIN playlist pl ON plt.playlist_id = pl.playlist_id;




                        --SORU3
/*"Let There Be Rock" adlı albüme ait tüm parçaları (Track) listeleyen, sanatçı (Artist) bilgisini
de içeren bir sorgu yazınız. Ayrıca, sonuçları parça süresi (milliseconds) büyükten küçüğe
sıralayınız*/

--tabloları incele
SELECT *FROM track
SELECT *FROM album
SELECT *FROM artist


SELECT t.name
FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN artist ar ON a.artist_id = ar.artist_id


         --CEVAP3

SELECT t.track_id, t.name, a.title, ar.name, t.milliseconds
FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN artist ar ON a.artist_id = ar.artist_id
WHERE a.title = 'Let There Be Rock'
ORDER BY t.milliseconds DESC;




