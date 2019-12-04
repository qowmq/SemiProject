package DTO;

public class Challenge_recordDTO {
	
	private int seq;
	private String success;
	private int challenge_num;
	private String member_id;
	private String enjoyDate;
	
	public Challenge_recordDTO(int seq, String success, int challenge_num, String member_id, String enjoyDate) {
		super();
		this.seq = seq;
		this.success = success;
		this.challenge_num = challenge_num;
		this.member_id = member_id;
		this.enjoyDate = enjoyDate;
	}
	public Challenge_recordDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getSuccess() {
		return success;
	}
	public void setSuccess(String success) {
		this.success = success;
	}
	public int getChallenge_num() {
		return challenge_num;
	}
	public void setChallenge_num(int challenge_num) {
		this.challenge_num = challenge_num;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getEnjoyDate() {
		return enjoyDate;
	}
	public void setEnjoyDate(String enjoyDate) {
		this.enjoyDate = enjoyDate;
	}
	
	
	
}
