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

public class ExcelHD {
	private XSSFWorkbook workbook;
	private XSSFSheet sheet;
	private List<HoaDon> listHD;

	public  ExcelHD(List<HoaDon> listHD) {
		this.listHD = listHD;
		workbook = new XSSFWorkbook();
		sheet = workbook.createSheet("Hoa Don");
	}

	public void writeHeaderRowHD() {
		Row row = sheet.createRow(0);

		CellStyle style = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();
		font.setBold(true);
		font.setFontHeight(16);
		style.setFont(font);

		Cell cell = row.createCell(0);
		cell.setCellValue("maHD");
		cell.setCellStyle(style);

		cell = row.createCell(1);
		cell.setCellValue("maKH");
		cell.setCellStyle(style);

		cell = row.createCell(2);
		cell.setCellValue("ngaymua");
		cell.setCellStyle(style);

		cell = row.createCell(3);
		cell.setCellValue("trangthai");
		cell.setCellStyle(style);

		cell = row.createCell(4);
		cell.setCellValue("tennguoinhan");
		cell.setCellStyle(style);

		cell = row.createCell(5);
		cell.setCellValue("diachinguoinhan");
		cell.setCellStyle(style);

		cell = row.createCell(6);
		cell.setCellValue("sdtnguoinhan");
		cell.setCellStyle(style);

	}

	public void writeDataRowHD() {
		int rowCount = 1;
		CellStyle style = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();
		font.setFontHeight(16);
		style.setFont(font);

		for (HoaDon hd : listHD) {
			Row row = sheet.createRow(rowCount++);

			Cell cell = row.createCell(0);
			cell.setCellValue(hd.getMahd());
			sheet.autoSizeColumn(0);
			cell.setCellStyle(style);

			cell = row.createCell(1);
			cell.setCellValue(hd.getMakh());
			sheet.autoSizeColumn(1);
			cell.setCellStyle(style);

			cell = row.createCell(2);
			cell.setCellValue(hd.getNgaymua());
			sheet.autoSizeColumn(2);
			cell.setCellStyle(style);

			cell = row.createCell(3);
			cell.setCellValue(hd.getTrangthai());
			sheet.autoSizeColumn(3);
			cell.setCellStyle(style);

			cell = row.createCell(4);
			cell.setCellValue(hd.getTennguoinhan());
			sheet.autoSizeColumn(4);
			cell.setCellStyle(style);

			cell = row.createCell(5);
			cell.setCellValue(hd.getDiachinguoinhan());
			sheet.autoSizeColumn(5);
			cell.setCellStyle(style);

			cell = row.createCell(6);
			cell.setCellValue(hd.getSdtnguoinhan());
			sheet.autoSizeColumn(6);
			cell.setCellStyle(style);
		}
	}

	public void exportHD(HttpServletResponse response) throws IOException {
		writeHeaderRowHD();
		writeDataRowHD();
		ServletOutputStream outputStream = response.getOutputStream();
		workbook.write(outputStream);
		workbook.close();
		outputStream.close();
	}

	public List<HoaDon> getListHD() {
		return listHD;
	}

	public void setListHD(List<HoaDon> listHD) {
		this.listHD = listHD;
	}
}
