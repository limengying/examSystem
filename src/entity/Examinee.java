package entity;

import java.util.Date;

public class Examinee {	

	private int examineeId;// int(11) NOT NULL AUTO_INCREMENT COMMENT '考生工号',
	private String password;// varchar(255) DEFAULT NULL COMMENT '考生登录密码',
	private String name;// varchar(255) DEFAULT NULL COMMENT '考生姓名',
	private boolean sex;//  bit(1) DEFAULT NULL COMMENT '考生性别',1代表男生0表示女生
	private String department;// varchar(255) DEFAULT NULL COMMENT '考生部门',
	private Date birthdate;// date DEFAULT NULL COMMENT '考生出生日期',
	private String telephone;// varchar(255) DEFAULT NULL COMMENT '考生电话',
	private String email;// varchar(255) DEFAULT NULL COMMENT '考生邮箱',
	private String address;//  varchar(255) DEFAULT NULL COMMENT '考生地址',
	
	public Examinee() {
		super();
	}
	
	public Examinee(int examineeId, String password, String name, boolean sex, String department, Date birthdate,
			String telephone, String email, String address) {
		super();
		this.examineeId = examineeId;
		this.password = password;
		this.name = name;
		this.sex = sex;
		this.department = department;
		this.birthdate = birthdate;
		this.telephone = telephone;
		this.email = email;
		this.address = address;
	}
	
	public int getExamineeId() {
		return examineeId;
	}

	public void setExamineeId(int examineeId) {
		this.examineeId = examineeId;
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
	
	@Override
	public String toString() {
		return "Examinee [examineeId=" + examineeId + ", password=" + password + ", name=" + name + ", sex=" + sex
				+ ", department=" + department + ", birthdate=" + birthdate + ", telephone=" + telephone + ", email="
				+ email + ", address=" + address + "]";
	}

}
