package model;

import java.util.Date;

public class Festa {
	private String aniversariante, tema, cliente;
	private String data;
	private String inicio;
	private String fim;
	public Festa(String aniversariante, String tema, String cliente, String data, String inicio, String fim) {
		super();
		this.aniversariante = aniversariante;
		this.tema = tema;
		this.cliente = cliente;
		this.data = data;
		this.inicio = inicio;
		this.fim = fim;
	}
	public String getAniversariante() {
		return aniversariante;
	}
	public void setAniversariante(String aniversariante) {
		this.aniversariante = aniversariante;
	}
	public String getTema() {
		return tema;
	}
	public void setTema(String tema) {
		this.tema = tema;
	}
	public String getCliente() {
		return cliente;
	}
	public void setCliente(String cliente) {
		this.cliente = cliente;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getInicio() {
		return inicio;
	}
	public void setInicio(String inicio) {
		this.inicio = inicio;
	}
	public String getFim() {
		return fim;
	}
	public void setFim(String fim) {
		this.fim = fim;
	}
	@Override
	public String toString() {
		return "Festa [aniversariante=" + aniversariante + ", tema=" + tema + ", cliente=" + cliente + ", data=" + data
				+ ", inicio=" + inicio + ", fim=" + fim + "]";
	}
	
	
	

}
