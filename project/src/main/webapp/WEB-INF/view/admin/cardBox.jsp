<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<div class="cardBox">
	<div class="card card-total">
		<div class="card-heading">
			<div class="card-icon ">
				<i class="fas fa-boxes"></i>
			</div>
			<div class="card-button">
				<i class="fas fa-ellipsis-h"></i>
			</div>
		</div>
		<div class="card-content">
			<div class="card-count">
			
				${hd.size()}
			</div>
		</div>
		<div class="card-bottom">
			<div class="card-text">
				Tổng đơn
			</div>
			<div class="card-percent up">
				<i class="fas fa-caret-up"></i><p>25%</p>
			</div>
		</div>
	</div>
	
	<div class="card card-total-customer">
		<div class="card-heading">
			<div class="card-icon">
				<i class="fas fa-users"></i>
			</div>
			<div class="card-button">
				<i class="fas fa-ellipsis-h"></i>
			</div>
		</div>
		<div class="card-content">
			<div class="card-count">
				${kh.size()}
			</div>
		</div>
		<div class="card-bottom">
			<div class="card-text">
				Khách hàng
			</div>
			<div class="card-percent up">
				<i class="fas fa-caret-up"></i><p>25%</p>
			</div>
		</div>
	</div>
	<div class="card card-total-revenue">
		<div class="card-heading">
			<div class="card-icon">
				<i class="fas fa-dollar-sign"></i>
			</div>
		</div>
		<div class="card-content">
			<div class="card-count">
			<fmt:formatNumber value = "	${doanhthu}" maxFractionDigits = "0" type = "number"/> VND</h6>
								
			</div>
		</div>
		<div class="card-bottom">
			<div class="card-text">
				Tổng doanh thu
			</div>
			<div class="card-percent up">
				<i class="fas fa-caret-up"></i><p>25%</p>
			</div>
		</div>
	</div>
</div>
