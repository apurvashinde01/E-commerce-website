package com.toystore.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import com.toystore.beans.Product;
import com.toystore.beans.User;

@Component
public class Account {
	private NamedParameterJdbcTemplate jdbc;
	private Product product;

	private PasswordEncoder passenc;

	public void setPassenc(PasswordEncoder passenc) {
		this.passenc = passenc;
	}

	@Autowired
	public void setDataSource(DataSource dataSource) {
		jdbc = new NamedParameterJdbcTemplate(dataSource);
	}

	public List<Product> getAllproducts() {

		return jdbc.query("select * from toys", new RowMapper<Product>() {

			@Override
			public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
				Product e = new Product();
				e.setProd_id(rs.getInt("prod_id"));
				e.setProd_name(rs.getString("prod_name"));
				e.setProd_desc(rs.getString("prod_desc"));
				e.setProd_price(rs.getInt("prod_price"));
				e.setProd_quantity(rs.getInt("prod_quantity"));
				e.setCat_id(rs.getInt("cat_id"));
				return e;
			}

		});
	}

	public void addUser(User u) {
		MapSqlParameterSource map = new MapSqlParameterSource();
		map.addValue("name", u.getName());
		map.addValue("email", u.getEmail());
		map.addValue("number", u.getNumber());
		
		map.addValue("password", u.getPassword());
		
		map.addValue("amount", 7000);

		jdbc.update(
				"insert into user(name,email,number,password,amount)"
						+ "values (:name,:email,:number,:password,:amount)",
				map);
		
	}

	public List<User> getAllUser() {
		

		return jdbc.query("select * from user", new RowMapper<User>() {

			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User e = new User();
				e.setUid(rs.getInt("uid"));
				e.setName(rs.getString("name"));
				e.setEmail(rs.getString("email"));
				e.setNumber(rs.getInt("number"));
				e.setPassword(rs.getString("password"));
				e.setAmount(rs.getInt("amount"));
				return e;
			}

		});
	}

}
