package cn.dmego.produce;
/**
 * �������һ������+���ֵ�����
 * @author dmego
 *
 */
public class CreatePro {


	/**
	 * ���ݴ���Ĳ����������һ������ 
	 * @param Num ������ĸ���
	 * @param Line ��ֵ��Χ
	 * @param hasMD �Ƿ��г˳�
	 * @param hasFS �Ƿ������������
	 * @return һ��������ɵ�����
	 */
	public  String[] proArrary( int range, String hasMD, String hasFS){
		int Num =  (int) (2 + Math.random()* 2); //����������������������2��, ���3��;
		int Size = Num * 2 +1; // �����б�ʾ�ܽ�������Ҳ�ǽ�㼯�ĳ���
		
		String symbol[] = {"+","-","��","��"};
		String[] arrary = new String[Size];
		ProperFra fractin = new ProperFra();
		// ��������������úõ�����������뵽������
		for(int i =0 ; i< Num ; i++){
			int symNum = 0;
			if(hasMD.equals("Y") || hasMD.equals("y")) {
				 symNum = (int) (Math.random()* 4 );
			}else if(hasMD.equals("N") || hasMD.equals("n")) {
				 symNum = (int) (Math.random()* 2 );
			}
			//int symNum=3;
			arrary[i] = symbol[symNum];	
			
		}
		//�ڽ����ɵ��������߷������뵽������
		for(int i = Num; i< Size;i++  ){
			int rand = 0;
			if(hasFS.equals("Y") || hasFS.equals("y")) {
				 rand = (int) (Math.random() * 2);
			}else if(hasFS.equals("N") || hasFS.equals("n")) {
				rand = 0;
			}		
			//int rand = 0;
			String FS = fractin.createFS(range);
			String ZS = fractin.createZS(range);
			if(rand == 0) { //��������������
				arrary[i] =ZS;
			}else if(rand == 1) { //�������������
				arrary[i] = FS;
			}
		}
		return arrary;
	}
	
	
	
	
	
	
}
