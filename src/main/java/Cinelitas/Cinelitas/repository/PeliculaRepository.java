/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Cinelitas.Cinelitas.repository;
import Cinelitas.Cinelitas.entity.Pelicula;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
/**
 *
 * @author Personal
 */
@Repository
public interface PeliculaRepository extends CrudRepository<Pelicula, Long>{
    
}
