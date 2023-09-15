package asm.service;

import java.util.List;


import asm.report.ReportCost;
import asm.report.ReportProduct;

public interface ReportService {
	List<ReportCost> reportCostInMonth(Integer month);
	List<ReportProduct> reportProductInMonth(Integer month);
}
