For a human understanding and ordering the execution of a SQL query, it's helpful to think about it in the logical order in which SQL processes the various components of the query. This logical processing order is a bit different from the order in which we write the SQL statement. Here's a simplified breakdown:

1. **FROM Clause**: 
   - **First Step**: SQL determines which table(s) to retrieve data from.
   - **Example**: `FROM employees`

2. **WHERE Clause**:
   - **Filtering Data**: After identifying the table, SQL filters the rows based on the given conditions.
   - **Example**: `WHERE department_id = 1`

3. **GROUP BY Clause**:
   - **Grouping Rows**: SQL groups the rows that have the same values in the specified column(s).
   - **Example**: `GROUP BY YEAR(hired_date)`

4. **Aggregation Functions**:
   - **Perform Calculations**: SQL performs calculations on each group (if any). This is where functions like `COUNT()`, `SUM()`, `AVG()` come into play.
   - **Example**: `SELECT COUNT(*)`

5. **SELECT Clause**:
   - **Selecting Columns**: Now, SQL decides which columns to include in the final result set. This can include columns specified in the SELECT clause and the results of any aggregate functions.
   - **Example**: `SELECT department_id, COUNT(*)`

6. **HAVING Clause**:
   - **Filtering Groups**: This is similar to the WHERE clause but for groups. It's used after grouping and aggregations are done.
   - **Example**: `HAVING COUNT(*) > 5`

7. **ORDER BY Clause**:
   - **Sorting Results**: Finally, SQL sorts the result set based on specified column(s).
   - **Example**: `ORDER BY salary DESC`

8. **LIMIT / OFFSET Clause** (if applicable):
   - **Limiting Results**: Limits the number of rows returned, often used for pagination.
   - **Example**: `LIMIT 10 OFFSET 20`

### Human-Friendly Approach

- **Understand the Purpose**: Start by understanding what the query is intended to do. Are you filtering data, aggregating, sorting, or a combination of these?
- **Break Down the Query**: Look at each part of the query and understand its role. 
- **Logical Flow**: Think about the logical flow (as outlined above) rather than the syntax order. For instance, even though `SELECT` is written first, it's not the first step SQL processes.
- **Visualize the Process**: Sometimes, visualizing the data as it moves through each step can help. Imagine a set of rows being filtered, grouped, aggregated, and finally displayed.

By following this approach, you can get a better grasp of what each part of the query is doing and how it contributes to the final result. Remember, the way we write SQL is not necessarily how SQL "thinks" about processing the query.