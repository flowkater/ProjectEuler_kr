package strategy;

public class Hand {
	public static final int HANDVALUE_GUU = 0; // �ָ��� ǥ���ϴ� ��  
	public static final int HANDVALUE_CHO = 1; // ������ ǥ���ϴ� �� 
	public static final int HANDVALUE_PAA = 2; // ���� ǥ���ϴ� �� 
	// ������������ ���� ǥ���ϴ� 3���� �ν��Ͻ� 
	public static final Hand[] hand = { new Hand(HANDVALUE_GUU),
			new Hand(HANDVALUE_CHO), new Hand(HANDVALUE_PAA) };
	// ������������ ���� ���ڿ� ǥ�� 
	private static final String[] name = { "�ָ�", "����", "��" };
	
	// ������������ ���� �� 
	private int handvalue;

	/*
	 * Singleton pattern
	 */
	private Hand(int handvalue) {
		this.handvalue = handvalue;
	}

	/*
	 * ������ �ν��Ͻ��� ��´�.
	 */
	public static Hand getHand(int handvalue) {
		return hand[handvalue];
	}

	/*
	 * this�� h�� �̱� ��� true
	 * hand1.isStrongerThan(hand2)
	 */
	public boolean isStrongerThan(Hand h) {
		return fight(h) == 1;
	}

	/*
	 * this�� h���� �� ��� true
	 * hand1.isWeakerThan(hand2)
	 */
	public boolean isWeakerThan(Hand h) {
		return fight(h) == -1;
	}

	/*
	 * ���ºδ� 0, this�� ���̸� 1, h�� ���̸� -1
	 * (this.handvalue + 1) % 3 == h.handvalue
	 * ���� 1, �� 2, �ָ� 0
	 * �ָ� 0, ���� 1, �� 2
	 */
	private int fight(Hand h) {
		if (this == h)
			return 0;
		else if ((this.handvalue + 1) % 3 == h.handvalue)
			return 1;
		else
			return -1;
	}

	// ���ڿ� ǥ������ ��ȯ 
	public String toString() {
		return name[handvalue];
	}
}
