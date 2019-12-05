package DTO;

public class MemberDTO {
   private int seq;
   private String id;
   private String pw;
   private String name;
   private String phone;
   private String email;
   private int point;
   private String getout;
   private int exp;
   public MemberDTO() {
      super();
      // TODO Auto-generated constructor stub
   }
   public MemberDTO(int seq, String id, String pw, String name, String phone, String email, int point, String getout,int exp) {
      super();
      this.seq = seq;
      this.id = id;
      this.pw = pw;
      this.name = name;
      this.phone = phone;
      this.email = email;
      this.point = point;
      this.getout = getout;
      this.exp = exp;
   }
   
   public int getLevel() {
	   int level = (exp - 1000)/2000;
	   return level +1;
   }
   
   public int getPercent() {
	   float percent = (float) ((this.getExp() / 2000.0)* 10.0);
	   System.out.println(percent);
	   return (int)percent;
   }
   public int getExp() {
      return exp;
   }
   public void setExp(int exp) {
      this.exp=exp;
   }

   public int getSeq() {
      return seq;
   }
   public void setSeq(int seq) {
      this.seq = seq;
   }
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   public String getPw() {
      return pw;
   }
   public void setPw(String pw) {
      this.pw = pw;
   }
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public String getPhone() {
      return phone;
   }
   public void setPhone(String phone) {
      this.phone = phone;
   }
   public String getEmail() {
      return email;
   }
   public void setEmail(String email) {
      this.email = email;
   }
   public int getPoint() {
      return point;
   }
   public void setPoint(int point) {
      this.point = point;
   }
   public String getGetout() {
      return getout;
   }
   public void setGetout(String getout) {
      this.getout = getout;
   }
   

   
}