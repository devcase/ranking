package ranking.persistence.dao;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import ranking.domain.Ponto;
import dwf.persistence.dao.BaseDAOImpl;

@Repository("pontoDAO")
@Transactional
public class PontoDAOImpl extends BaseDAOImpl<Ponto> implements PontoDAO{

	public PontoDAOImpl() {
		super(Ponto.class);
	}

}