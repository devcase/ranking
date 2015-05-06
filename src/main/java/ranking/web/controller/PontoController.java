package ranking.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ranking.domain.Ponto;
import ranking.persistence.dao.PontoDAO;
import dwf.utils.SimpleParsedMap;
import dwf.web.controller.BaseCrudController;

@Controller
@RequestMapping("/ponto")
public class PontoController extends BaseCrudController<Ponto, Long> {
	@Autowired
	private PontoDAO pontoDAO;

	public PontoController() {
		super(Ponto.class);
	}

	// @RequestMapping(value="/enviarPontos", method=RequestMethod.POST)
	@RequestMapping(value = "/enviarPontos")
	public String enviarPontos(String nome, int pontos) {
		Ponto new_ponto = new Ponto();
		new_ponto.setNome(nome);
		new_ponto.setPontos(pontos);
		pontoDAO.saveNew(new_ponto);

		model.addAttribute(entityName, new_ponto);
		model.addAttribute("entity", new_ponto);
		setupNavCrud(OPERATION_VIEW, new_ponto);

		// return "/" + entityName + "/view";
		return "ponto/ok";
	}

	@RequestMapping(value = "/top10")
	public String top10() {
		SimpleParsedMap filter = new SimpleParsedMap("orderBy", "pontos", "orderByDirection", "desc");
//		System.out.println(filter.toString());
		 List<?> pontos = pontoDAO.findByFilter(filter, 0, 10);
		// List<Object> pontos = (List<Object>) pontoDAO.findAll();
		 model.addAttribute("list", pontos);
		return "ponto/top10";
	}
}
