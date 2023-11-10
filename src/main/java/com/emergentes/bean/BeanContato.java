
package com.emergentes.bean;



import com.emergentes.entidades.Contacto;
import com.emergentes.jpa.ContactoJpaController;
import com.emergentes.jpa.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class BeanContato {
    private EntityManagerFactory emf;
    private ContactoJpaController jpaContacto;
    
    public BeanContato() {
        emf = Persistence.createEntityManagerFactory("demoPU");
        jpaContacto = new ContactoJpaController (emf);
        
    }
    
   public List<Contacto> listarTodos(){
       return jpaContacto.findContactoEntities();
   }
   
   public void insertar(Contacto c){
     jpaContacto.create(c);
    
}
   public void editar(Contacto c){
        try {
            jpaContacto.edit(c);
        } catch (Exception ex) {
            Logger.getLogger(BeanContato.class.getName()).log(Level.SEVERE, null, ex);
        }
   }
   public void eliminar(Integer id){
        try {
            jpaContacto.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(BeanContato.class.getName()).log(Level.SEVERE, null, ex);
        }
   }
   public Contacto buscar(Integer id){
       return jpaContacto.findContacto(id);
   }
}