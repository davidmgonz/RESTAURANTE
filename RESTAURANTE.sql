   use Restaurante;
   --1. Dar el plato más caro de cada comida.
   select Plato, DetalleComida.IdComida
   from Plato
   inner join DetalleComida
   on Plato.CodPlato = DetalleComida.CodPlato
   inner join Comida
   on DetalleComida.IdComida = comida.IdComida
    where PrecioPlato in(
	select top 1 PrecioPlato
	from DetalleComida
	order by PrecioPlato desc)
	group by DetalleComida.IdComida, plato

	select *
	from DetalleComida

    --2. Para cada comida dar el número de platos servidos 
    --   y el número de platos no servidos.
    --3. Dar el plato más caro de cada tipo de plato.
   -- 4. Dar el plato más caro del tipo de plato con más platos que no sean bebidas.
   -- 5. Dar los platos servidos de la comida más barata.
   -- 6. Dar los tipos de platos servidos de la comida más cara.
   -- 7. Dar las comidas pendientes de pagar (dando mesa y fecha) con todos
   --    sus platos servidos.
   -- 8. Comidas (dando mesa y fecha) que sólo han consumido bebidas
   -- 9. Mostrar los platos de las Comidas que han servido más de 5 bebidas.
   -- 10. Comidas (dando mesa y fecha) que han servido más bebidas que platos.
       