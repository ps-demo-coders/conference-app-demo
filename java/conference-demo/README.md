# Globomantics Conference Demo

Spring Boot application based on David's data model.

**Work in progress!**

Currently configured to use H2 in-memory database.

Access the H2 database console when the app is running at: http://localhost:8080/h2-console

JDBC URL: `jdbc:h2:mem:globomantics`

Username: `sa`, password: empty

## Implementation notes

#### Database layer

JPA entities in package `com.globomantics.conference.data.entities`.

JPA repositories in package `com.globomantics.conference.data.repositories`.

#### Service layer

Services in `com.globomantics.conference.services`.

DTOs in package `com.globomantics.conference.data.dtos`.

Note that the DTOs do not map one-to-one to entities; the DTOs reflect what you would want to communicate to or from a front-end.

[Mapstruct](https://mapstruct.org/) is used to map between entities and DTOs. Mappers are defined in the package `com.globomantics.conference.data.mappers`.

The services form the transaction boundary in the back-end (they have a `@Transactional` annotation).
Services use the repositories to access the database, and must only expose DTOs (not entities) to the caller.
Services use Mapstruct mappers to convert between entities and DTOs.
