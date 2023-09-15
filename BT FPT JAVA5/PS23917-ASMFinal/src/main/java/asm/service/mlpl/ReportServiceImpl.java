package asm.service.mlpl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import asm.dao.ReportCostRepo;
import asm.dao.ReportProductRepo;
import asm.report.ReportCost;
import asm.report.ReportProduct;
import asm.service.ReportService;

@Service
public class ReportServiceImpl implements ReportService{
	@Autowired ReportCostRepo rpcRepo;
	@Autowired ReportProductRepo rprRepo;
	@Override
	public List<ReportCost> reportCostInMonth(Integer month) {
		List<ReportCost> lst = rpcRepo.reportCost(month);
		return lst;
	}
	@Override
	public List<ReportProduct> reportProductInMonth(Integer month) {
		List<ReportProduct> lst = rprRepo.reportProduct(month);
		return lst;
	}

}
