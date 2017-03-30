package cn.dmego.domain;
/*****************************************************
 * ������װ���ɵ���Ŀ����������Ĵ𰸣��û������
 * �𰸣��Լ���ź��û���������� javaBean
 * @author dmego
 ******************************************************/
public class ProAns {
	private int id ; //��Ŀ��
	private String problem ; //��Ŀ���������ʽ
	private String rightAns ; //������������ȷ��
	private String yourAns ;  //�û�����Ĵ�
	private int check;  //��¼�û������Ƿ������ȷ
	public ProAns(){}
	public ProAns(int id, String problem,String rightAns, String yourAns, int check) {
		this.id = id;
		this.problem = problem;
		this.rightAns = rightAns;
		this.yourAns = yourAns;
		this.check = check;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProblem() {
		return problem;
	}
	public void setProblem(String problem) {
		this.problem = problem;
	}
	public String getRightAns() {
		return rightAns;
	}
	public void setRightAns(String rightAns) {
		this.rightAns = rightAns;
	}
	public String getYourAns() {
		return yourAns;
	}
	public void setYourAns(String yourAns) {
		this.yourAns = yourAns;
	}
	public int getCheck() {
		return check;
	}
	public void setCheck(int check) {
		this.check = check;
	}
	 public String toString(){
		 String temp = null;
		 if(check == 1){
			temp = "�� ����ȷ��";
		 }else if(check == -1){
			 temp = "�� �𰸴���";
		 }
		 return "��"+id+"�⣺"+problem+" = "+"; ��ȷ�𰸣�"+rightAns+", ��Ĵ𰸣�"+yourAns +temp;
	 }
	
}
