
import java.util.*;
public class x1 {
	
	
	static int occurrences(char[] s){
		int antal =0;
		int slen = s.length;
		for(int i =0;i<slen;i++){
			if(s[i]=='o') antal++;
		}
		return antal;
	}
	
	
	static int tryPerm(char[] s, int rec){
		
		int a=rec,b=rec;
		int slen = s.length-1;
		int i;
		for(i=0;i<slen;i++){
			
			if(s[i]=='o'&&s[i+1]=='o'){
				
				if(i-1>=0 && s[i-1]=='-'){
					s[i-1]='o';s[i]='-';s[i+1]='-';
					
					a = Math.min(a,tryPerm(s, occurrences(s)));
					s[i-1]='-';s[i]='o';s[i+1]='o';
				}
				if(i+2<12 && s[i+2]=='-'){
					s[i]='-';s[i+1]='-';s[i+2]='o';
					b= Math.min(b,tryPerm(s,occurrences(s)));
					s[i]='o';s[i+1]='o';s[i+2]='-';
				}
				
				
				
			}
		}
		return Math.min(rec, Math.min(a,b));
	}
	
	public static void main(String[] args){
		
		int record;
		Scanner input = new Scanner(System.in);
		int antaltest = input.nextInt();
		int[] records = new int[antaltest];
		char[][] tests = new char[antaltest][12];
		int j;
		for(j=0;j<antaltest;j++){
			tests[j] = input.next().toCharArray();
		}
		
		for(j=0;j<antaltest;j++){
			record = occurrences(tests[j]);
			record = tryPerm(tests[j],record);
			records[j]=record;
		}
		
		for(j=0;j<antaltest;j++){
			System.out.println(records[j]);
		}
		input.close();
		
	}
	
	

}
