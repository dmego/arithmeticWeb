package cn.dmego.produce;
/**
 * 随机生成一个符号+数字的数组
 * @author dmego
 *
 */
public class CreatePro {


	/**
	 * 根据传入的参数随机生成一个数组 
	 * @param Num 运算符的个数
	 * @param Line 数值范围
	 * @param hasMD 是否有乘除
	 * @param hasFS 是否有真分数参与
	 * @return 一个随机生成的数组
	 */
	public  String[] proArrary( int range, String hasMD, String hasFS){
		int Num =  (int) (2 + Math.random()* 2); //随机产生运算符个数，最少2个, 最多3个;
		int Size = Num * 2 +1; // 在树中表示总结点个数，也是结点集的长度
		
		String symbol[] = {"+","-","×","÷"};
		String[] arrary = new String[Size];
		ProperFra fractin = new ProperFra();
		// 首先随机产生设置好的运算符，传入到数组中
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
		//在将生成的整数或者分数传入到数组中
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
			if(rand == 0) { //传入整数到数组
				arrary[i] =ZS;
			}else if(rand == 1) { //传入分数到数组
				arrary[i] = FS;
			}
		}
		return arrary;
	}
	
	
	
	
	
	
}
