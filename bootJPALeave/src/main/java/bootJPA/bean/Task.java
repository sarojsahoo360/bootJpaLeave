/**
 * 
 */
package bootJPA.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author $ Saroj Kumar Sahoo
 
 */
@Entity(name = "apply_leave")
public class Task implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="idapply_leave")	
	private int id;
	@Column(name="typeapply_leav")
	private String leavename;
	@Column(name="reasonapply_leave")
	private String reason;
	@Temporal(TemporalType.DATE)
	@Column(name="fromdateapply_leave")
	private Date fdt;
	@Column(name="todateapply_leave")
	private Date tdt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLeavename() {
		return leavename;
	}
	public void setLeavename(String leavename) {
		this.leavename = leavename;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public Date getFdt() {
		return fdt;
	}
	public void setFdt(Date fdt) {
		this.fdt = fdt;
	}
	public Date getTdt() {
		return tdt;
	}
	public void setTdt(Date tdt) {
		this.tdt = tdt;
	}
	public Task(String leavename, String reason, Date tdt, Date fdt) {
		this.leavename = leavename;
		this.reason = reason;
		this.fdt = fdt;
		this.tdt =tdt;
	}

	public Task()
	{
		
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Task [id=").append(id).append(", leavename=").append(leavename).append(", reason=")
				.append(reason).append(", fdt=").append(fdt).append(", tdt=").append(tdt)
				.append("]");
		return builder.toString();
	}

}
