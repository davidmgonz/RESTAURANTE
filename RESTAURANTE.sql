   use Restaurante;
   --1. Dar el plato m�s caro de cada comida.
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

    --2. Para cada comida dar el n�mero de platos servidos 
    --   y el n�mero de platos no servidos.
    --3. Dar el plato m�s caro de cada tipo de plato.
   -- 4. Dar el plato m�s caro del tipo de plato con m�s platos que no sean bebidas.
   -- 5. Dar los platos servidos de la comida m�s barata.
   -- 6. Dar los tipos de platos servidos de la comida m�s cara.
   -- 7. Dar las comidas pendientes de pagar (dando mesa y fecha) con todos
   --    sus platos servidos.
   -- 8. Comidas (dando mesa y fecha) que s�lo han consumido bebidas
   -- 9. Mostrar los platos de las Comidas que han servido m�s de 5 bebidas.
   -- 10. Comidas (dando mesa y fecha) que han servido m�s bebidas que platos.
       