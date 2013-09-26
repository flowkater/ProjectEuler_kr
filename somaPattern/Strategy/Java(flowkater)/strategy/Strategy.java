package strategy;

/*
 * ���������� ����
 * ������ � ���� ����? nextHand()
 * ������ �������� �̰����, ������ �н� �޼ҵ� study(boolean win) 
 * �̱� ��� study(true), �� ��� study(false) 
 */
public interface Strategy {
	public abstract Hand nextHand();
	public abstract void study(boolean win);
}
