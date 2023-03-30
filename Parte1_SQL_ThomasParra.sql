/*
# <span style="font-size: 14px;"><b>Prueba tecnica data analyst - Thomas Parra A</b></span>
*/

/*
## Parte 1. SQL
*/

/*
<span style="left: calc(var(--scale-factor)*121.05px); top: calc(var(--scale-factor)*346.33px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.886711);" role="presentation" dir="ltr">1.1. Escriba una consulta que muestre el año de cada fecha de pedido y el mes numérico de cada&nbsp;</span>   <span role="presentation" dir="ltr" style="font-size: calc(var(--scale-factor)*11px); left: calc(var(--scale-factor)*121.05px); top: calc(var(--scale-factor)*360.96px); font-family: sans-serif; transform: scaleX(0.907811);">fecha</span> <span role="presentation" dir="ltr" style="font-size: calc(var(--scale-factor)*11px); left: calc(var(--scale-factor)*152.63px); top: calc(var(--scale-factor)*360.96px); font-family: sans-serif; transform: scaleX(0.919363);">de</span> <span role="presentation" dir="ltr" style="font-size: calc(var(--scale-factor)*11px); left: calc(var(--scale-factor)*171.02px); top: calc(var(--scale-factor)*360.96px); font-family: sans-serif; transform: scaleX(0.94319);">pedido</span> <span role="presentation" dir="ltr" style="font-size: calc(var(--scale-factor)*11px); left: calc(var(--scale-factor)*209.4px); top: calc(var(--scale-factor)*360.96px); font-family: sans-serif; transform: scaleX(0.913072);">en</span> <span role="presentation" dir="ltr" style="font-size: calc(var(--scale-factor)*11px); left: calc(var(--scale-factor)*227.79px); top: calc(var(--scale-factor)*360.96px); font-family: sans-serif; transform: scaleX(0.910902);">columnas</span> <span role="presentation" dir="ltr" style="font-size: calc(var(--scale-factor)*11px); left: calc(var(--scale-factor)*277.95px); top: calc(var(--scale-factor)*360.96px); font-family: sans-serif; transform: scaleX(0.881268);">separadas</span> <span role="presentation" dir="ltr" style="font-size: calc(var(--scale-factor)*11px); left: calc(var(--scale-factor)*330.51px); top: calc(var(--scale-factor)*360.96px); font-family: sans-serif; transform: scaleX(0.913072);">en</span> <span role="presentation" dir="ltr" style="font-size: calc(var(--scale-factor)*11px); left: calc(var(--scale-factor)*348.9px); top: calc(var(--scale-factor)*360.96px); font-family: sans-serif; transform: scaleX(0.902319);">los</span> <span role="presentation" dir="ltr" style="font-size: calc(var(--scale-factor)*11px); left: calc(var(--scale-factor)*368.87px); top: calc(var(--scale-factor)*360.96px); font-family: sans-serif; transform: scaleX(0.920755);">resultados.</span> <span role="presentation" dir="ltr" style="font-size: calc(var(--scale-factor)*11px); left: calc(var(--scale-factor)*425.63px); top: calc(var(--scale-factor)*360.96px); font-family: sans-serif; transform: scaleX(0.91351);">Incluya</span> <span role="presentation" dir="ltr" style="font-size: calc(var(--scale-factor)*11px); left: calc(var(--scale-factor)*464.59px); top: calc(var(--scale-factor)*360.96px); font-family: sans-serif; transform: scaleX(0.86006);">las</span> <span role="presentation" dir="ltr" style="font-size: calc(var(--scale-factor)*11px); left: calc(var(--scale-factor)*483.96px); top: calc(var(--scale-factor)*360.96px); font-family: sans-serif; transform: scaleX(0.90693);">columnas</span>

<span style="left: calc(var(--scale-factor)*121.05px); top: calc(var(--scale-factor)*375.36px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.898344);" role="presentation" dir="ltr">SalesOrderID y OrderDate sobre la tabla</span> <span style="left: calc(var(--scale-factor)*302.10px); top: calc(var(--scale-factor)*375.36px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.87775);" role="presentation" dir="ltr">Sales.SalesOrderHeader.</span>
*/

SELECT SalesOrderID, OrderDate, YEAR(OrderDate) AS OrderYear, MONTH(OrderDate) AS OrderMonth

FROM AdventureWorks2019.Sales.SalesOrderHeader

/*
1.2. Escriba una consulta utilizando la tabla Sales.SalesOrderDetail para mostrar un valor ("Menos de 10" o "10-19" o "20-29" o "30-39" o "40 y más") basado en el valor OrderQty utilizando la función CASE. Incluya las columnas SalesOrderID y OrderQty en los resultados.
*/

SELECT SalesOrderID, OrderQty,

    CASE 

        WHEN OrderQty < 10 THEN 'Menos de 10'

        WHEN OrderQty BETWEEN 10 AND 19 THEN '10-19'

        WHEN OrderQty BETWEEN 20 AND 29 THEN '20-29'

        WHEN OrderQty BETWEEN 30 AND 39 THEN '30-39'

        ELSE '40 y mas'

    END AS QtyRange

FROM AdventureWorks2019.Sales.SalesOrderDetail



/*
<span style="left: calc(var(--scale-factor)*121.05px); top: calc(var(--scale-factor)*462.38px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif;" role="presentation" dir="ltr">1.3. C</span><span style="left: calc(var(--scale-factor)*126.85px); top: calc(var(--scale-factor)*462.38px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.976712);" role="presentation" dir="ltr">onstruya una consulta que le pe</span><span style="left: calc(var(--scale-factor)*279.30px); top: calc(var(--scale-factor)*462.38px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.967884);" role="presentation" dir="ltr">rmita conocer la cantidad de compras realizadas por&nbsp;</span>  <span style="left: calc(var(--scale-factor)*121.05px); top: calc(var(--scale-factor)*476.78px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.899467);" role="presentation" dir="ltr">CustomerID en</span> <span style="left: calc(var(--scale-factor)*190.25px); top: calc(var(--scale-factor)*476.78px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.896258);" role="presentation" dir="ltr">la tabla SalesOrderHeader</span> <span style="left: calc(var(--scale-factor)*309.70px); top: calc(var(--scale-factor)*476.78px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.895581);" role="presentation" dir="ltr">(asuma que cada línea es una compra realizada)</span><span style="left: calc(var(--scale-factor)*524.17px); top: calc(var(--scale-factor)*476.78px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif;" role="presentation" dir="ltr">,&nbsp;</span>  <span style="left: calc(var(--scale-factor)*121.05px); top: calc(var(--scale-factor)*491.39px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.92684);" role="presentation" dir="ltr">ordenado de mayor a menor.</span>
*/

SELECT CustomerID, COUNT(*) as AcumOrders

FROM AdventureWorks2019.Sales.SalesOrderHeader

GROUP BY CustomerID

ORDER BY AcumOrders DESC

/*
## Parte 2. Vizualizacion
*/

/*
2.1. <span style="left: calc(var(--scale-factor)*121.05px); top: calc(var(--scale-factor)*558.78px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.925324);" role="presentation" dir="ltr">Construya información que le permita conocer el margen</span> <span style="left: calc(var(--scale-factor)*380.33px); top: calc(var(--scale-factor)*558.78px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.950577);" role="presentation" dir="ltr">de cada item facturado</span> <span style="left: calc(var(--scale-factor)*489.55px); top: calc(var(--scale-factor)*558.78px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.901327);" role="presentation" dir="ltr">desde el&nbsp;</span>  <span style="left: calc(var(--scale-factor)*121.05px); top: calc(var(--scale-factor)*573.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.913671);" role="presentation" dir="ltr">año</span> <span style="left: calc(var(--scale-factor)*146.04px); top: calc(var(--scale-factor)*573.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.944092);" role="presentation" dir="ltr">2011</span> <span style="left: calc(var(--scale-factor)*176.60px); top: calc(var(--scale-factor)*573.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.903388);" role="presentation" dir="ltr">al</span> <span style="left: calc(var(--scale-factor)*192.57px); top: calc(var(--scale-factor)*573.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.912623);" role="presentation" dir="ltr">2014</span> <span style="left: calc(var(--scale-factor)*223.13px); top: calc(var(--scale-factor)*573.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.95);" role="presentation" dir="ltr">(toda</span> <span style="left: calc(var(--scale-factor)*255.28px); top: calc(var(--scale-factor)*573.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.917523);" role="presentation" dir="ltr">la</span> <span style="left: calc(var(--scale-factor)*271.25px); top: calc(var(--scale-factor)*573.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.952072);" role="presentation" dir="ltr">información</span> <span style="left: calc(var(--scale-factor)*333.60px); top: calc(var(--scale-factor)*573.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.937096);" role="presentation" dir="ltr">disponible</span> <span style="left: calc(var(--scale-factor)*388.13px); top: calc(var(--scale-factor)*573.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.913072);" role="presentation" dir="ltr">en</span> <span style="left: calc(var(--scale-factor)*407.52px); top: calc(var(--scale-factor)*573.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.926519);" role="presentation" dir="ltr">el</span> <span style="left: calc(var(--scale-factor)*423.90px); top: calc(var(--scale-factor)*573.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.902488);" role="presentation" dir="ltr">esquema</span> <span style="left: calc(var(--scale-factor)*472.87px); top: calc(var(--scale-factor)*573.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.82444);" role="presentation" dir="ltr">Sales</span> <span style="left: calc(var(--scale-factor)*504.35px); top: calc(var(--scale-factor)*573.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.941566);" role="presentation" dir="ltr">tabla (</span><span style="left: calc(var(--scale-factor)*121.05px); top: calc(var(--scale-factor)*589.04px); font-size: calc(var(--scale-factor)*9.60px); font-family: monospace; transform: scaleX(0.988068);" role="presentation" dir="ltr">SalesOrderDetail</span><span style="left: calc(var(--scale-factor)*204.48px); top: calc(var(--scale-factor)*587.81px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.915179);" role="presentation" dir="ltr">),</span> <span style="left: calc(var(--scale-factor)*212.88px); top: calc(var(--scale-factor)*587.81px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.903367);" role="presentation" dir="ltr">de tal manera que tenga a disposición una columna denominada Costo&nbsp;</span>  <span style="left: calc(var(--scale-factor)*121.05px); top: calc(var(--scale-factor)*602.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.921712);" role="presentation" dir="ltr">de venta que contiene el “StandarCost” de cada item ,y otra columna denominada Margen&nbsp;</span>  <span style="left: calc(var(--scale-factor)*121.05px); top: calc(var(--scale-factor)*616.81px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.926651);" role="presentation" dir="ltr">Bruto que le permita saber</span> <span style="left: calc(var(--scale-factor)*244.08px); top: calc(var(--scale-factor)*616.81px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.898493);" role="presentation" dir="ltr">cuál</span> <span style="left: calc(var(--scale-factor)*264.88px); top: calc(var(--scale-factor)*616.81px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.917631);" role="presentation" dir="ltr">es el valor residual que queda entre el valor de venta</span> <span style="left: calc(var(--scale-factor)*505.15px); top: calc(var(--scale-factor)*616.81px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.901079);" role="presentation" dir="ltr">(Line&nbsp;</span> <span style="left: calc(var(--scale-factor)*121.05px); top: calc(var(--scale-factor)*631.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.963563);" role="presentation" dir="ltr">Total)</span> <span style="left: calc(var(--scale-factor)*151.05px); top: calc(var(--scale-factor)*631.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif;" role="presentation" dir="ltr">–</span> <span style="left: calc(var(--scale-factor)*160.45px); top: calc(var(--scale-factor)*631.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.968037);" role="presentation" dir="ltr">el costo de venta,</span> <span style="left: calc(var(--scale-factor)*248.08px); top: calc(var(--scale-factor)*631.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.991946);" role="presentation" dir="ltr">tenga presente que el costo de venta varía en el tiempo</span> <span style="left: calc(var(--scale-factor)*521.97px); top: calc(var(--scale-factor)*631.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif;" role="presentation" dir="ltr">y&nbsp;</span> <span style="left: calc(var(--scale-factor)*121.05px); top: calc(var(--scale-factor)*645.81px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.922898);" role="presentation" dir="ltr">depende de las cantidades facturadas</span> <span style="left: calc(var(--scale-factor)*295.30px); top: calc(var(--scale-factor)*645.81px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.969134);" role="presentation" dir="ltr">(información</span> <span style="left: calc(var(--scale-factor)*356.50px); top: calc(var(--scale-factor)*645.81px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.925308);" role="presentation" dir="ltr">costo en</span> <span style="left: calc(var(--scale-factor)*397.52px); top: calc(var(--scale-factor)*645.81px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.959725);" role="presentation" dir="ltr">esquema “Production”</span> <span style="left: calc(var(--scale-factor)*503.95px); top: calc(var(--scale-factor)*645.81px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.965082);" role="presentation" dir="ltr">tabla (</span><span style="left: calc(var(--scale-factor)*121.05px); top: calc(var(--scale-factor)*660.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif;" role="presentation" dir="ltr">“</span><span style="left: calc(var(--scale-factor)*125.85px); top: calc(var(--scale-factor)*661.27px); font-size: calc(var(--scale-factor)*9.60px); font-family: sans-serif; transform: scaleX(1.15361);" role="presentation" dir="ltr">ProductCostHistory”</span><span style="left: calc(var(--scale-factor)*224.88px); top: calc(var(--scale-factor)*660.21px); font-size: calc(var(--scale-factor)*11.00px); font-family: sans-serif; transform: scaleX(0.943006);" role="presentation" dir="ltr">).</span>
*/

SELECT sod.*,

       pch.StandardCost*sod.OrderQty AS CostoVenta, --Se calcula el costo de venta total multiplicando la cantidad de la orden (OrderQty) por el costo estándar del producto (StandardCost) de la tabla ProductCostHistory.

       sod.LineTotal - (pch.StandardCost*sod.OrderQty) AS MargenBruto ---- Calcula el margen bruto de cada línea de pedido restando el costo de venta del ingreso total 

FROM AdventureWorks2019.Sales.SalesOrderDetail AS sod

INNER JOIN AdventureWorks2019.Production.ProductCostHistory AS pch

    ON sod.ProductID = pch.ProductID AND sod.ModifiedDate >= pch.StartDate AND sod.ModifiedDate <= COALESCE(pch.EndDate,GETDATE()) --Se asume que los valores null en la columna EndDate significan que el costo todavia es vigente y se filtran los costos correspondientes al momento de la venta 

WHERE YEAR(sod.ModifiedDate) BETWEEN 2011 and 2014

/*
## Parte 3. Analisis
*/

SELECT max(ModifiedDate)

FROM AdventureWorks2019.Sales.SalesOrderDetail

with temp as (

    SELECT sod.*,

       pch.StandardCost*sod.OrderQty AS CostoVenta, --Se calcula el costo de venta total multiplicando la cantidad de la orden (OrderQty) por el costo estándar del producto (StandardCost) de la tabla ProductCostHistory.

       sod.LineTotal - (pch.StandardCost*sod.OrderQty) AS MargenBruto ---- Calcula el margen bruto de cada línea de pedido restando el costo de venta del ingreso total 

FROM AdventureWorks2019.Sales.SalesOrderDetail AS sod

INNER JOIN AdventureWorks2019.Production.ProductCostHistory AS pch

    ON sod.ProductID = pch.ProductID AND sod.ModifiedDate >= pch.StartDate AND sod.ModifiedDate <= COALESCE(pch.EndDate,GETDATE()) --Se asume que los valores null en la columna EndDate significan que el costo todavia es vigente y se filtran los costos correspondientes al momento de la venta 

WHERE YEAR(sod.ModifiedDate) BETWEEN 2011 and 2014



) 



SELECT YEAR(ModifiedDate),SUM(LineTotal) as Venta, SUM(OrderQty) as Qty

FROM temp

WHERE MONTH(ModifiedDate) <= 6 AND YEAR(ModifiedDate) IN(2013,2014)

GROUP BY YEAR(ModifiedDate)





