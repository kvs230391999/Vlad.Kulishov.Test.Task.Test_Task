package Vlad.Kulishov.Test.Task.Test_Task.repository;

import Vlad.Kulishov.Test.Task.Test_Task.entity.Person;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface PersonRepository extends CrudRepository<Person, Long> {
    Optional<Person> findByUsername(String username);
}
