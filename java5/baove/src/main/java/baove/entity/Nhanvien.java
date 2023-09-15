package baove.entity;

import java.io.Serializable;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
@SuppressWarnings("serial")
@Data
@Entity 
@Table(name = "NhanVienS")
public class Nhanvien implements Serializable{
	@Id
	String manv;
	String hoten;
	String diachi;
	String gioitinh;
}
