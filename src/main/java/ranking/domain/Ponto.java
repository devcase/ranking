package ranking.domain;

import javax.persistence.Entity;

import dwf.persistence.domain.BaseEntity;

@Entity
public class Ponto extends BaseEntity<Long> {
	private String nome;
	private int pontos;
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Integer getPontos() {
		return pontos;
	}
	public void setPontos(int pontos) {
		this.pontos = pontos;
	}
	@Override
	protected String displayText() {
		return nome;
	}
	
	
}
