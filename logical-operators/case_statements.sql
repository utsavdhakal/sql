use book_shop;

select title, stock_quantity,
	case
		when stock_quantity < 50 then '*'
        when stock_quantity < 100 then '**'
        else '***'
	end as STOCK
from books;