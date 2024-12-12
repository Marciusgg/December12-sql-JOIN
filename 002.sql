SELECT -- Sasirenkame skaičiuoti sumą viso "retail_price" stulpelio ir pavadiname "total_spent"
    SUM(cgp.retail_price) AS total_spent
FROM -- Pasirenkame, iš kurios lentelės imame stulpelį ir pervadiname
    customer_gift_purchases AS cgp
JOIN -- Pervadiname gifts lentelę į g ir nurodome, kurie stulpeliai skirtingose lentelėse atitinka
    gifts AS g ON cgp.gift_id = g.gift_id
JOIN -- Pervadiname gifts_categories lentelę į gc ir nurodome, kurie stulpeliai skirtingose lentelėse atitinka
    gift_categories AS gc ON g.gift_category_id = gc.gift_category_id
WHERE -- Pagal salygą nurodome kriterijus, kuriais remiantis atrenkamos eilutės
    cgp.customer_id = 2
    AND gc.name = 'read';

-- Geriau naudoti užklausą su JOIN 002.sql, nes pridėjus naują prekę prie gifts lentelės su gift_category_id = 5 ar pakeitus dovanos kategoriją užklausa turėtų veikti. Testuota nebuvo.