/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testeoracle;

import java.util.LinkedList;

/**
 *
 * @author Joel
 */
public class TesteOracle {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Netbeansjoel q=new Netbeansjoel();
        String consulta = "select * from NETBEANSJOEL";
        
        LinkedList<String> resultado=q.query(consulta);
        
        for (int i=0; i< resultado.size(); i++){
            System.out.println(resultado.get(i));
        }

    }
    
}
