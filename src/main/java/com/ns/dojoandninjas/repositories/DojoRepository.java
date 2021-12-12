package com.ns.dojoandninjas.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ns.dojoandninjas.models.Dojo;

@Repository
public interface DojoRepository extends CrudRepository<Dojo, Long>{

List<Dojo> findByNameContaining(String name);
List<Dojo> findAll();
Optional<Dojo> findById(Long id);
void deleteById(Long id);


}
