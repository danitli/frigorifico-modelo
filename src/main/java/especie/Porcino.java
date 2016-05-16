package especie;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

import especie.Especie;

@Entity
@DiscriminatorValue("2")
public class Porcino extends Especie {

}
