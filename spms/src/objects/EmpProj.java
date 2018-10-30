package objects;

public class EmpProj {
	private String p_name;
	private String module;
	private String p_status;
	private String m_status;
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getModule() {
		return module;
	}
	public void setModule(String module) {
		this.module = module;
	}
	public String getP_status() {
		return p_status;
	}
	public void setP_status(String p_status) {
		this.p_status = p_status;
	}
	public String getM_status() {
		return m_status;
	}
	public void setM_status(String m_status) {
		this.m_status = m_status;
	}
	@Override
	public String toString() {
		return "EmpProj [p_name=" + p_name + ", module=" + module + ", p_status=" + p_status + ", m_status=" + m_status
				+ "]";
	}
	
}
