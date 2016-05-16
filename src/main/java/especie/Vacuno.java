package especie;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

import especie.Especie;

@Entity
@DiscriminatorValue("3")
public class Vacuno extends Especie {

}
