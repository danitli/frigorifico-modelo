package especie;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

import especie.Especie;

@Entity
@DiscriminatorValue("1")
public class Ovino extends Especie {

}
