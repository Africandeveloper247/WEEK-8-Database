# ShoeGUY Database

Shoeguy is an online store that is into selling shoes and accessories. The database will keep track of all products, customers, and orders.

## Database Schema

The database will consist of the following tables:

1. **Products**
   - product_id (Primary Key)
   - category_id (Foreign Key)
   - Product_name
   - brand
   - size
   - color
   - price
   - stock_quantity
   - description
   - image_url
   - created_time
   

2. **Customers**
   - customer_id (Primary Key)
   - first_name
   - last_name
   - email
   - phone
   - address
   - city
   -created_time


3. **Orders**
   - order_id (Primary Key)
   - customer_id (Foreign Key)
   - order_date
   - status
    - total_amount

4. **Order_details**
   - order_detail_id (Primary Key)
   - order_id (Foreign Key)
   - product_id (Foreign Key)
   - quantity
   - price

5. **Categories**
    - category_id (Primary Key)
    - category_name
    - description_text
    
    **payment**
   - payment_id (Primary Key)
   - order_id (Foreign Key)
   - payment_date
   - amount
   - payment_method
   - payment_status

The database schema is designed to efficiently manage the products, customers, and orders for the ShoeGUY online store. Each table is linked through foreign keys to maintain data integrity and relationships between different entities.