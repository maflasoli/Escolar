/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BD;
/**
 *
 * @author Administrador
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class conecta {
    
    public Connection conexao;
    public PreparedStatement ps;
    public ResultSet rs;
    
    public conecta(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            //Class.forName("com.mysql.cj.jdbc.Driver");
        }catch(ClassNotFoundException cnfe){
            System.out.println("Classe não encontrada..");
        }
        try{
            conexao=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/quim","root","19twostars");
        }catch(SQLException sqle){
            System.out.println("Deu pau...");
        }
    }
    
    public boolean validausuario(String usuario, String senha) throws SQLException{

        boolean autenticado = false;
        
        ps = conexao.prepareStatement("select nome, senha from usuario where nome='"+usuario+"' and senha='"+senha+"'");
        rs = ps.executeQuery();
        if(rs.next()){
            autenticado = true;
            System.out.print("entrou..");
        }
        ps.close();
        rs.close();
        
        return autenticado;
    }
    
    public void cadastraUsuario(String usuario, String senha) throws SQLException{
        ps = conexao.prepareStatement("insert into usuario(nome,senha) values('"+usuario+"','"+senha+"')");
        ps.executeUpdate();

        ps.close();
    }
    
    public void cadastraAluno(String rm, String nome,String dtanascimento, String rgescolar,String mae, String pai, String endereco, String telefone) throws SQLException{
        ps = conexao.prepareStatement("insert into aluno(rm,nome,dtanascimento,rgescolar,mae,pai,endereco,telefone) values('"+rm+"','"+nome+"','"+dtanascimento+"','"+rgescolar+"','"+mae+"','"+pai+"','"+endereco+"','"+telefone+"')");
        ps.executeUpdate();

        //System.out.println(rm);
        //System.out.println(nome);
        //System.out.println(dtanascimento);
        //System.out.println(rgescolar);
        //System.out.println(mae);
        //System.out.println(pai);
        //System.out.println(endereco);
        //System.out.println(telefone);
        
        ps.close();
    }
    
    public ResultSet listaAluno(){
        try {
            ps = conexao.prepareStatement("select foto, nome from aluno");
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            System.out.println("Erro na classe conecta.listaAluno...");
            Logger.getLogger(conecta.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return rs;
    }
    
    //public List
    
    public static void main(String[]args) throws SQLException{
        conecta con = new conecta();
        System.out.println("Ola GUJ");
        System.out.println(con.validausuario("teste", "teste"));
        //con.cadastraAluno("1", "2", "3", "4", "5", "6", "7", "8");
        ResultSet res;
        res = con.listaAluno();
        while(res.next()){
            System.out.println(res.getString("nome"));
        }
    }
}
