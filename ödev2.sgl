                 --ödev 2 çalışmalarım---

               --CEVAP 1
--tabloyu görelim neler var
select *from invoice

--kolon isimlerini bul
SELECT column_name
FROM information_schema.columns
WHERE table_name = 'invoice';

--hepsi aynı anda null olan yok ( 0 ADET)
SELECT COUNT(*)
FROM Invoice
WHERE invoice_date IS NULL
  AND total IS NULL
  AND billing_city IS NULL
  AND billing_state IS NULL
  AND billing_country IS NULL
  AND billingpostal_code IS NULL
  AND billing_address IS NULL;

-- HERHANGİ BİR SATIRINDA NULL OLANLAR  (209 ADET)
SELECT COUNT(*)
FROM invoice
WHERE invoice_id IS NULL
   OR customer_id IS NULL
   OR invoice_date IS NULL
   OR total IS NULL
   OR billing_city IS NULL
   OR billing_state IS NULL
   OR billing_country IS NULL
   OR billingpostal_code IS NULL
   OR billing_address IS NULL;


         --CEVAP 2
--2 KATINA ÇIKAR VE SIRALA

SELECT invoice_id, total AS original_total, total * 2 AS double_total
FROM invoice
ORDER BY double_total DESC;


		     --CEVAP 3
 --2013 AGUSTOS ADRES DEĞİŞİKLİĞİ

 
SELECT 
    CONCAT(
        SUBSTRING(billing_address FROM 1 FOR 3), 
        SUBSTRING(billing_address FROM LENGTH(billing_address) - 3 FOR 4)
    ) AS "Açık Adres", 
    billing_address AS "Eski Adres",
	invoice_date AS "Fatura Tarihi" 
FROM Invoice
WHERE EXTRACT(YEAR FROM invoice_date) = 2013
  AND EXTRACT(MONTH FROM invoice_date) = 8;