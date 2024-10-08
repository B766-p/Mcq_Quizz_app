package mcqapp;

public class Question {
		String qt,op1,op2,op3,op4,ans,scode;

	

		public String getQt() {
			return qt;
		}



		public void setQt(String qt) {
			this.qt = qt;
		}



		public String getOp1() {
			return op1;
		}



		public void setOp1(String op1) {
			this.op1 = op1;
		}



		public String getOp2() {
			return op2;
		}



		public void setOp2(String op2) {
			this.op2 = op2;
		}



		public String getOp3() {
			return op3;
		}



		public void setOp3(String op3) {
			this.op3 = op3;
		}



		public String getOp4() {
			return op4;
		}



		public void setOp4(String op4) {
			this.op4 = op4;
		}



		public String getAns() {
			return ans;
		}



		public void setAns(String ans) {
			this.ans = ans;
		}



		public String getScode() {
			return scode;
		}



		public void setScode(String scode) {
			this.scode = scode;
		}



		@Override
		public String toString() {
			return "Question [qt=" + qt + ", op1=" + op1 + ", op2=" + op2
					+ ", op3=" + op3 + ", op4=" + op4 + ", ans=" + ans
					+ ", scode=" + scode + "]";
		}

		
		

}
