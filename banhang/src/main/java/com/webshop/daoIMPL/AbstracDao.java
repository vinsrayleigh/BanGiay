package com.webshop.daoIMPL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import com.webshop.dao.GenericDAO;
import com.webshop.maper.RowMapper;

public class AbstracDao<T> implements GenericDAO<T> {

	public Connection getConnection() {
		String userName = "root";
		String password = "123456";
		String url = "jdbc:mysql://localhost:3306/banhang";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, userName, password);
			return conn;
		} catch (Exception e) {
			return null;
		}
	}

	private void setparameter(PreparedStatement statement, Object... parameters) {
		try {
			for (int i = 0; i < parameters.length; i++) {
				Object parameter = parameters[i];
				int index = i + 1;
				if (parameter instanceof Long) {
					statement.setLong(index, (Long) parameter);
				} else if (parameter instanceof String) {
					statement.setString(index, (String) parameter);
				} else if (parameter instanceof Integer) {
					statement.setInt(index, (Integer) parameter);
				} else if (parameter instanceof Timestamp) {
					statement.setTimestamp(index, (Timestamp) parameter);
				} else if (parameter == null) {
					statement.setNull(index, Types.NULL);
				}
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

	@Override
	public <T> List<T> query(String sql, RowMapper<T> mapper, Object... parameters) {

		List<T> results = new ArrayList<>();
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultset = null;
		try {
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			setparameter(statement, parameters);
			resultset = statement.executeQuery();
			while (resultset.next()) {
				results.add(mapper.mapRow(resultset));
			}
			return results;
		} catch (SQLException e) {
			return null;
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (resultset != null) {
					resultset.close();
				}
			} catch (Exception e) {
				return null;
			}
		}
	}

	@Override
	public boolean update(String sql, Object... parameters) {
		Connection connection = null;
		PreparedStatement statement = null;
		try {
			connection = getConnection();
			connection.setAutoCommit(false);
			statement = connection.prepareStatement(sql);
			setparameter(statement, parameters);
			statement.executeUpdate();
			connection.commit();
			
		} catch (SQLException e) {
			if (connection != null) {
				try {
					connection.rollback();
				} catch (SQLException e1) {
				
					e1.printStackTrace();
				}
			}
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return false;
	}

	@Override
	public Long insert(String sql, Object... parameters) {

		ResultSet resultset = null;
		Long id = null;
		Connection connection = null;
		PreparedStatement statement = null;
		try {
			connection = getConnection();
			connection.setAutoCommit(false);
			statement = connection.prepareStatement(sql, statement.RETURN_GENERATED_KEYS);
			setparameter(statement, parameters);
			statement.executeUpdate();
			resultset = statement.getGeneratedKeys();
			if (resultset.next()) {
				id = resultset.getLong(1);
			}
			connection.commit();
			return id;
		} catch (SQLException e) {
			if (connection != null) {
				try {
					connection.rollback();
				} catch (SQLException e1) {

					e1.printStackTrace();
				}
			}
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (resultset != null) {
					resultset.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return id;
	}

	@Override
	public boolean delete(String sql, Object... parameters) {
		Connection connection = null;
		PreparedStatement statement = null;
		try {
			connection = getConnection();
			connection.setAutoCommit(false);
			statement = connection.prepareStatement(sql);
			setparameter(statement, parameters);
			int row = statement.executeUpdate();
			connection.commit();
			if( row>0 ) {
				return true;
			}else {
				return false;
			}
				 
			
		} catch (SQLException e) {
			if (connection != null) {
				try {
					connection.rollback();
				} catch (SQLException e1) {
				
					e1.printStackTrace();
				}
			}
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return false;
	}

	@Override
	public int count(String sql, Object... parameters) {

		
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultset = null;
		try {
			int count=0;
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			setparameter(statement, parameters);
			resultset = statement.executeQuery();
			while (resultset.next()) {
				count=resultset.getInt(1);
			}
			return count;
		} catch (SQLException e) {
			return 0;
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (resultset != null) {
					resultset.close();
				}
			} catch (Exception e) {
				return 0;
			}
		}
	}
	}


