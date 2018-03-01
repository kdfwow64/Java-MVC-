package com.hellokoding.account.config;
 
import javax.sql.DataSource;
 
import com.hellokoding.account.dao.UserDAO;
import com.hellokoding.account.dao.UserDAOImpl;
 
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
 
@Configuration
@ComponentScan(basePackages="com.hellokoding.account")
@EnableWebMvc
public class MvcConfiguration extends WebMvcConfigurerAdapter{
    @Bean
    public DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/db_user");
        dataSource.setUsername("root");
        dataSource.setPassword("");
         
        return dataSource;
    }
     
    @Bean
    public UserDAO getUserDAO() {
        return new UserDAOImpl(getDataSource());
    }
}