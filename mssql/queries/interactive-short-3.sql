/* IS3. Friends of a Person
\set personId 17592186044461
 */
SELECT Person.id, Person.firstName, person.lastName, person.creationDate
FROM Person_knows_Person k, Person
WHERE k.Person1Id = :personId
  AND k.Person2Id = Person.id
ORDER BY Person.creationDate DESC, Person.id ASC
;