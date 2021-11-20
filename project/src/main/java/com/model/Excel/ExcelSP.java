package com.model.Excel;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.model.HoaDon;
import com.model.SanPham;

public class ExcelSP {
	private XSSFWorkbook workbook;
	private XSSFSheet sheet;
	private List<SanPham> listSP;

	public ExcelSP(List<SanPham> listSP) {
		this.listSP = listSP;
		workbook = new XSSFWorkbook();
		sheet = workbook.createSheet("San Pham");
	}
	
	public void writeHeaderRowSP() {
		Row row = sheet.createRow(0);

		CellStyle style = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();
		font.setBold(true);
		font.setFontHeight(16);
		style.setFont(font);
		
		
		Cell cell = row.createCell(0);
		cell.setCellValue("masp");
		cell.setCellStyle(style);
		
		cell = row.createCell(1);
		cell.setCellValue("tensp");
		cell.setCellStyle(style);

		cell = row.createCell(2);
		cell.setCellValue("maloai");
		cell.setCellStyle(style);

		cell = row.createCell(3);
		cell.setCellValue("manh");
		cell.setCellStyle(style);

		cell = row.createCell(4);
		cell.setCellValue("gia");
		cell.setCellStyle(style);

		cell = row.createCell(5);
		cell.setCellValue("mota");
		cell.setCellStyle(style);

		cell = row.createCell(6);
		cell.setCellValue("tinhtrang");
		cell.setCellStyle(style);

		cell = row.createCell(7);
		cell.setCellValue("hinh");
		cell.setCellStyle(style);
	}

	public void writeDataRowSP() {
		int rowCount = 1;
		CellStyle style = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();
		font.setFontHeight(16);
		style.setFont(font);
		
		for (SanPham sp : listSP) {
			Row row = sheet.createRow(rowCount++);
						
			Cell cell = row.createCell(0);
			cell.setCellValue(sp.getMasp());
			sheet.autoSizeColumn(0);
			cell.setCellStyle(style);
			
			cell = row.createCell(1);
			cell.setCellValue(sp.getTensp());
			sheet.autoSizeColumn(1);
			cell.setCellStyle(style);

			cell = row.createCell(2);
			cell.setCellValue(sp.getMaloai());
			sheet.autoSizeColumn(2);
			cell.setCellStyle(style);

			cell = row.createCell(3);
			cell.setCellValue(sp.getManh());
			sheet.autoSizeColumn(3);
			cell.setCellStyle(style);

			cell = row.createCell(4);
			cell.setCellValue(sp.getGia());
			sheet.autoSizeColumn(4);
			cell.setCellStyle(style);

			cell = row.createCell(5);
			cell.setCellValue(sp.getMota());
			sheet.autoSizeColumn(5);
			cell.setCellStyle(style);

			cell = row.createCell(6);
			cell.setCellValue(sp.getTinhtrang());
			sheet.autoSizeColumn(6);
			cell.setCellStyle(style);

			cell = row.createCell(7);
			cell.setCellValue(sp.getHinh());
			sheet.autoSizeColumn(7);
			cell.setCellStyle(style);
		}
	}

	public void exportSP(HttpServletResponse response) throws IOException {
		writeHeaderRowSP();
		writeDataRowSP();

		ServletOutputStream outputStream = response.getOutputStream();
		workbook.write(outputStream);
		workbook.close();
		outputStream.close();
	}
	
	
	public List<SanPham> getListSP() {
		return listSP;
	}

	public void setListSP(List<SanPham> listSP) {
		this.listSP = listSP;
	}

}
