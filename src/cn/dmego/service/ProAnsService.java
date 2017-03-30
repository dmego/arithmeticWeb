package cn.dmego.service;

import cn.dmego.dao.MysqlProAnsDao;
import cn.dmego.domain.ProAns;
import cn.dmego.produce.BinaryTree;
import cn.dmego.produce.CreatePro;
import cn.dmego.produce.ProperFra;

/************************
 * ҵ���߼�����
 * @author dmego
 *
 */
public class ProAnsService {
	CreatePro cre = new CreatePro();
	ProperFra fractin = new ProperFra();
	MysqlProAnsDao mpd = new MysqlProAnsDao();
	
	/**
	 * �����δ�������������ݿ��� 
	 * @param proBean
	 */
	public void saveToDB(ProAns[] proBean){
		mpd.resert();
		mpd.addAll(proBean);
	}
	/**
	 * ����û�����Ĵ��Ƿ���ȷ��Ȼ��ΪBean�е�check������ֵ
	 * ��-1������ˣ�1������ˣ�
	 * @param proBean ��Ŀ�������飨�������û�����Ĵ𰸣�
	 * @return У����ɵ���Ŀ��������
	 */
	public ProAns[] checkAnswer(ProAns[] proBean){
		for(int i = 0 ; i < proBean.length; i++){
			if(proBean[i].getYourAns().equals(proBean[i].getRightAns()))
				proBean[i].setCheck(1);
			else
				proBean[i].setCheck(-1);
		}
		return proBean;
	}
	

	/**
	 * �����û�����Ĳ���������Ŀ
	 * @param hasmd ָ�����޳˳�����Y/N��
	 * @param hasfs	ָ�������������Y/N��
	 * @param range ָ������ʽȡֵ��Χ
	 * @param num ָ���������
	 * @return ���ɺõ���Ŀ�������飨������Ŀ���ʽ����ȷ�𰸣�
	 */
	public ProAns[] produce(String hasmd,String hasfs,int range,int num){
		mpd.resert(); //�������ݱ�
		String rightAns = ""; //��������������ȷ��
		String problem = ""; //���ɵ�������ʽ
		ProAns[] proBean = new ProAns[num]; //javaBean���飬������װ���ɵ���Ŀ����ȷ��
		for(int i = 0; i< num;i++){
				String[] array = cre.proArrary( range, hasmd, hasfs); //����һ�������+���ֵ�����
		        BinaryTree tree = new BinaryTree(array); //��������Ϊ������������һ�ö������ķ���
		        rightAns = tree.CalAndVal(); //������ȷ������õ����Ǽٷ���
		        rightAns = fractin.falseToTrue(rightAns); //������ļٷ�������Ϊ������
		        //���ɵ���Ŀ�ַ�����������ڼ���������Ϊ�ڼ�����ʱ�������ṹ������Ϊ ���� ���� ����Ϊ0 ���仯��
		        problem = tree.toString(); 
		        proBean[i] = new ProAns(); //������ÿ��Ԫ�ض�����Ҫnew��һ�����������׳���ָ���쳣
		        proBean[i].setId(i+1);
		        proBean[i].setProblem(problem);
		        proBean[i].setRightAns(rightAns);
			}
		return proBean;
	}
}
