SELECT -- Sasirenkame skaičiuoti sumą viso "retail_price" stulpelio ir pavadiname "total_spent"
    SUM(retail_price) AS total_spent
FROM -- Pasirenkame, iš kurios lentelės imame stulpelį
    customer_gift_purchases
WHERE -- Pagal salygą nurodome kriterijus, kuriais remiantis atrenkamos eilutės
    customer_id = 2
    AND gift_id = 10;