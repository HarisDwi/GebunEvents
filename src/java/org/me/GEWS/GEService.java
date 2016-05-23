/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.me.GEWS;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import java.sql.*;

/**
 *
 * @author tricerafi
 */
@WebService(serviceName = "GEService")
public class GEService {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "view")
    public ResultSetMetaData view() throws Exception {
        //TODO write your implementation code here:
        String db_user = "root";
        String db_pass = "632146rockyou";
        String db_url = "jdbc:mysql://localhost/lawui-haris";
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(db_url, db_user, db_pass);
        Statement statement = connection.createStatement();
        String query = "SELECT * from event";
        ResultSet resultSet = statement.executeQuery(query);
            
        ResultSetMetaData metaData = resultSet.getMetaData();
        return metaData;
    }
}
