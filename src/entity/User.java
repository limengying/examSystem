package entity;

import java.util.Date;

public class User {

	private int userId;// int(11) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '用户工号',
	private String password;// varchar(255) DEFAULT NULL COMMENT '用户登录密码',
	private String name;// varchar(255) DEFAULT NULL COMMENT '用户姓名',
	private boolean sex;// bit(1) DEFAULT NULL COMMENT '用户性别',1代表男生0表示女生
	private String department;// varchar(255) DEFAULT NULL COMMENT '用户部门',
	private Date birthdate;// date DEFAULT NULL COMMENT '用户出生日期',
	private String telephone;// varchar(255) DEFAULT NULL COMMENT '用户电话',
	private String email;// varchar(255) DEFAULT NULL COMMENT '用户邮箱',
	private String address;// varchar(255) DEFAULT NULL COMMENT '用户地址',
	private boolean permission;// bit(1) DEFAULT NULL COMMENT '用户是否有权限更新题库',

	public User() {
		super();	
	}

	public User(int userId, String password, String name, boolean sex, String department, Date birthdate,
			String telephone, String email, String address, boolean permission) {
		super();
		this.userId = userId;
		this.password = password;
		this.name = name;
		this.sex = sex;
		this.department = department;
		this.birthdate = birthdate;
		this.telephone = telephone;
		this.email = email;
		this.address = address;
		this.permission = permission;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isSex() {
		return sex;
	}

	public void setSex(boolean sex) {
		this.sex = sex;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public Date getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public boolean isPermission() {
		return permission;
	}

	public void setPermission(boolean permission) {
		this.permission = permission;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", password=" + password + ", name=" + name + ", sex=" + sex + ", department="
				+ department + ", birthdate=" + birthdate + ", telephone=" + telephone + ", email=" + email
				+ ", address=" + address + ", permission=" + permission + "]";
	}

}
