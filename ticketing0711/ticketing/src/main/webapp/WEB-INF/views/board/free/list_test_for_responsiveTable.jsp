<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="../../includes/header.jsp" %>


<style>
	
	<!--/* 스타일은 통합 이후에 기존의 style.css 혹은 별도의  .css파일로 이동시킨 후, header에 링크로 연결*/-->
	
	<!--/*board/free/list : 1. 베스트 게시물 css */-->
	
	.ws_table_best {
		display:relative;top:50px;left:50%;right:50%;width:100%;
	}
	<!--/*board/free/list : 1-1. 베스트 게시물의 열 정보 */-->
	.ws_table_best thead th {
		background-color:#FFDBD8;color:black;text-align:center;
	}
	<!--/*board/free/list : 1-2. 베스트 게시물의 글본문*/-->
	.ws_table_best tbody td { 
	background-color:#DFE5F5;
	}
		
	<!--/*board/free/list : 2. 게시물 테이블목록 */-->
	<!--/*board/free/list : 2-1. 공통설정 */-->
	.ws_table {
		border-collapse:collapse;
		border-spacing:0;
		display:relative;
		top:50px;
		text-overflow:ellipsis;
	}
	<!--/*board/free/list : 2-2. 게시물 테이블의 열 별 이름부분.  */-->
	.ws_table thead {
		background-color:#717F9A;
		color:#ffffff;
		width:100%;
		text-align:center;
		
	}

	.ws_table thead th {
		text-align:center;
	}
	
	<!--/*board/free/list : 2-3. 게시물 테이블의 본문 중 공지  */-->
	.ws_table tbody .notice td {
		text-align:center;
		background-color:#DFE5F5;
	}
	.ws_table tbody .notice td:nth-child(3) {
		text-align:left;
	}
	.ws_table tbody .notice td:nth-child(7) {
		text-align:left;
		display:none;
	}
	<!--/*board/free/list : 2-4. 게시물 테이블의 본문 중 일반 게시글  */-->
	
	.ws_table tbody .post td {
		text-align:center;
		background-color:#C3D8F5;
	}
	
	.ws_table tbody .post td:nth-child(3) {
		text-align:left;
	}
	.ws_table tbody .post td:nth-child(7) {
		text-align:left;
		display:none;
	}
	<!--/*반응형 테이블 구현의 시작*/-->
	@media(max-width: 1000px) {
		
		
		
		/*머리부터 뗀다*/
		/*1. 머리를 제거한다*/
		.ws_table thead {
		display:none;
		}
		/*2. 테이블 구조를 무너트린다. 디스플레이를 block으로*/
				
				
		/*3. 유지하고자 하는 테이블을 지정하고, 복구시킨다*/
		
		
		.ws_table tbody td:nth-child(1)	{
		width:20%;
		display:inline-block;
		border-bottom:1px solid #C3D8F5;
		}
		
		.ws_table tbody td:nth-child(2) 	{
		width:20%;
		display:inline-block;
		
		}
		
		.ws_table tbody td:nth-child(3)	{
		display:none;
		}
		.ws_table tbody td:nth-child(4),td:nth-child(5)	{
		width:20%;
		display:inline-block;
		}
		.ws_table tbody td:nth-child(6)	{
		width:20%;
		display:inline-block;
		
		}
		
		.ws_table tbody .post td:nth-child(7)	{
		display:block;
		width:99.95%;
		border-top:1px solid #C3D8F5;
		border-bottom:1px solid;
		}
		.ws_table tbody .notice td:nth-child(7)	{
		display:block;
		width:99.95%;
		border-bottom:1px solid;
		}
		.ws_table tbody .notice td:nth-child(1)	{
		width:20%;
		display:inline-block;
		border-bottom:1px solid #DFE5F5;
		}
		
		
	
	}<!--/*board/free/list : 반응형 웹 구현-->
		
	<!--/*board/free/list : 3. 검색바  */-->
	<!--/*board/free/list : 3-1. 검색바  */-->
	.buster-light .movie-items .container .col-md-14 {
	position:relative;
	top:40px;
	width:100%;
	background-color:#ffffff;
	margin-bottom:0px;
	margin:auto;
	display:inline-block;
	}

	<!--/*board/free/list : 3-2. select박스 두 개의 공통 설정  */-->
	.buster-light .movie-items .container .col-md-14 select {
	width:90px;display:inline-block;border: 2px solid #020d18;color:#2F2F2F;
	}
	<!--/*board/free/list : 3-3. 글목록 검색바 설정  */-->
	.buster-light .movie-items .container .col-md-14 .list-search {
	width:35%;border: 2px solid #020d18;color:#2F2F2F;display:inline-block;
	}
	<!--/*board/free/list : 4. 페이징은 기본 탬플릿 설정 그대로 유지  */-->
	
	<!--/*기타. 버튼 등*/-->
	.ws-btn-reddish {
	background-color:#FF6F61;width:70px;border:0px;border-radius:15px;
	margin:10px;width:60px;height:40px;
	}
	
</style>



<!--  
* @Class Name : EgovSampleService.java
* @Description : EgovSampleService Class
* @Modification Information
* @
* @  수정일      			수정자 				             수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.07.2     이웅식                    			최초 생성
*
* @author BIT 116기 2조
* @since 2019. 07.01
* @version 1.0
* @see
*
*  Copyright (C) by bit 2조 All right reserved.
*/-->



<div class="hero common-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1> 자유게시판</h1>
					<ul class="breadcumb">
						<li class="active"><a href="#">커뮤니티</a></li>
						<li> <span class="ion-ios-arrow-right"></span> 자유 게시판</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 바탕 : 흰색 -->
<div class="buster-light">
	<div class="movie-items">
		<!-- 1. 베스트 게시물의 시작 -->	
		<div class="container">
		<div class="col-md-14">
		<!-- 1. listTable 배치 -->
		<h4>베스트 게시물</h4>
		<br>
		<table class="ws_table_best" >
			<thead>
		<!-- 2. 최초의 행. 열의 종류 구분 -->
				<tr>
					<th>제  목</th>
					<th>제  목</th>
				</tr>
			</thead>
		<!-- 향후 core jstl의 foreach로 게시글의 목록이 올 자리다 -->
			<tbody>
				<tr>
					<td>고질라 쿠키영상</td>
					<td>고질라 결말해석[74]</td>
				</tr>
				<tr>
					<td>고질라 쿠키영상</td>
					<td>고질라 결말해석[74]</td>
				</tr>
				<tr>
					<td>고질라 쿠키영상</td>
					<td>고질라 결말해석[74]</td>
				</tr>
				<tr>
					<td>고질라 쿠키영상</td>
					<td>고질라 결말해석[74]</td>
				</tr>
			</tbody>
		</table>
		</div>
	</div>
			
		
<!--lst 복사-->
			
			

	<div class="container">
		<div class="row">
			<!-- listTable 배치 시작 -->
			<div>
				<div style="position:relative;top:50px;">
					
					<button class="ws-btn-reddish" value="글쓰기"><i class="fa fa-pencil" aria-hidden="true"></i></button>
						<!-- 1. listTable 배치 -->
						<table class="ws_table">
						  <thead>
							<!-- 2. 최초의 행. 열의 종류 구분 -->
							<tr>
							  <th style="width:8%;">글번호</th>
							  <th style="width:7%;">카테고리</th>
							  <th style="width:45%;">제목</th>
							  <th style="width:10%;">글쓴이</th>
							  <th style="width:10%;">최근수정일</th>
							  <th style="width:10%;">조회수</th>
							  
							</tr>
						  </thead>
						 
						 <!-- 향후 core jstl의 foreach로 게시글의 목록이 올 자리다 -->
						  <tbody>
						   <!-- 3. 공지사항. strong으로 강조를 주며, 게시자의 아이디가 다홍색으로 처리된다. 항상 최상단 노출-->
							<tr class="notice">
							  <td><strong>0026</strong></td>
							  <td><strong>공지</strong></td>
							  <td><strong>비속어 사용과 음란물 게시시 활동정지 처분합니다.</strong></td>
							  <td ><strong>admin01</strong></td>
							  <td ><strong>2011/04/25</strong></td>
							  <td><strong>84200</strong></td>
							  <td>모바일 글제목. </td>
							</tr>
							<tr class="notice">
							  <td><strong>002</strong></td>
							  <td><strong>공지</strong></td>
							  <td><strong>정치글은 글삭제 대상입니다.</strong></td>
							  <td><strong>admin01</strong></td>
							  <td><strong>2011/07/25</strong></td>
							  <td><strong>16847</strong></td>
							  <td>모바일 글제목. </td>
							</tr>
							<!--4.  자유게시판 게시글의 나열 시작 -->
							<tr class="post">
							  <td >0024</td>
							  <td>결말해석</td>
							  <td>고질라 쿠키영상 무슨뜻인가요?</td>
							  <td>가모라</td>
							  <td>2009/01/12</td>
							  <td>2400</td>
							  <td>모바일 글제목. </td>
							</tr>
							<tr class="post">
							  <td>0023</td>
							  <td>잡담</td>
							  <td>Edinburgh</td>
							  <td>22</td>
							  <td>2012/03/29</td>
							  <td>$433,060</td>
							  <td>모바일 글제목. </td>
							</tr>
							<tr class="post">
							  <td>0022</td>
							  <td>토론</td>
							  <td>Tokyo</td>
							  <td>33</td>
							  <td>2008/11/28</td>
							  <td>$162,700</td>
							  <td>모바일 글제목. </td>
							</tr>
							<tr class="post">
							  <td>0020</td>
							  <td>잡담해석</td>
							  <td>New York</td>
							  <td>61</td>
							  <td>2012/12/02</td>
							  <td>$372,000</td>
							  <td>모바일 글제목. </td>
							</tr>
							<tr class="post">
							  <td>0019</td>
							  <td>잡담</td>
							  <td>San Francisco</td>
							  <td>59</td>
							  <td>2012/08/06</td>
							  <td>$137,500</td>
							  <td>모바일 글제목. </td>
							</tr>
							<tr class="post">
							  <td>0017</td>
							  <td>유머</td>
							  <td>Tokyo</td>
							  <td>55</td>
							  <td>2010/10/14</td>
							  <td>$327,900</td>
							  <td>모바일 글제목. </td>
							</tr>
							<tr class="post">
							  <td>0016</td>
							  <td>토론</td>
							  <td>San Francisco [13]</td>
							  <td>39</td>
							  <td>2009/09/15</td>
							  <td>$205,500</td>
							  <td>모바일 글제목. </td>
							</tr>
							<tr class="post">
							  <td>0015</td>
							  <td>결말해석</td>
							  <td>Edinburgh [13]</td>
							  <td>23</td>
							  <td>2008/12/13</td>
							  <td>$103,600</td>
							  <td>모바일 글제목. </td>
							</tr>
							<tr class="post">
							  <td>0014</td>
							  <td>결말해석</td>
							  <td>London</td>
							  <td>30</td>
							  <td>2008/12/19</td>
							  <td>$90,560</td>
							  <td>모바일 글제목. </td>
							</tr>
							<tr class="post">
							  <td>00013</td>
							  <td>유머</td>
							  <td>Edinburgh</td>
							  <td>22</td>
							  <td>2013/03/03</td>
							  <td>$342,000</td>
							  <td>모바일 글제목. </td>
							</tr>
							<tr class="post">
							  <td>00013</td>
							  <td>유머</td>
							  <td>Edinburgh</td>
							  <td>22</td>
							  <td>2013/03/03</td>
							  <td>$342,000</td>
							  <td>모바일 글제목. </td>
							</tr>
							<tr class="post">
							  <td>0014</td>
							  <td>결말해석</td>
							  <td>London</td>
							  <td>30</td>
							  <td>2008/12/19</td>
							  <td>$90,560</td>
							  <td>모바일 글제목. </td>
							</tr>
							<tr class="post">
							  <td>00013</td>
							  <td>유머</td>
							  <td>Edinburgh</td>
							  <td>22</td>
							  <td>2013/03/03</td>
							  <td>$342,000</td>
							  <td>모바일 글제목. </td>
							</tr>
							<tr class="post">
							  <td>00013</td>
							  <td>유머</td>
							  <td>Edinburgh</td>
							  <td>22</td>
							  <td>2013/03/03</td>
							  <td>$342,000</td>
							  <td>모바일 글제목. </td>
							</tr>
							<tr class="post">
							  <td>0014</td>
							  <td>결말해석</td>
							  <td>London</td>
							  <td>30</td>
							  <td>2008/12/19</td>
							  <td>$90,560</td>
							  <td>모바일 글제목. </td>
							</tr>
							<tr class="post">
							  <td>00013</td>
							  <td>유머</td>
							  <td>Edinburgh</td>
							  <td>22</td>
							  <td>2013/03/03</td>
							  <td>$342,000</td>
							  <td>모바일 글제목. </td>
							</tr>
							<tr class="post">
							  <td>00013</td>
							  <td>유머</td>
							  <td>Edinburgh</td>
							  <td>22</td>
							  <td>2013/03/03</td>
							  <td>$342,000</td>
							  <td>모바일 글제목. </td>
							</tr>
						  </tbody>
						</table>
						</div>
					</div>
				 </div>
				 
				  <!--TableList의 끝-->
				  
				 <!--5. 검색바  구현부  -->
					<center class="col-md-14">
					<select>
						<option value="all">전체</option>
						<option value="ticket">결말해석</option>
						<option value="snack">유머</option>
						<option value="snack">잡담</option>
						
					</select>
					&nbsp;&nbsp;
					<select>
						<option value="united">제목</option>
						<option value="saab">글쓴이</option>
						<option value="saab">전체</option>
					</select>
					&nbsp;&nbsp;
					<span>
					<input class="list-search" type="text" placeholder="원하시는 내용을 입력하세요">
					</span>
					<span>
					&nbsp;&nbsp;
					<button class="ws-btn-reddish"><i class="fa fa-search" aria-hidden="true"></i></button>
					</span>
				</center>
				
				<!-- 6. 페이징 : 그대로 따옴 기초 탬플릿의 [ bloglist_ligth.html]  -->
            	<ul class="pagination">
            		<li class="icon-prev"><a href="#"><i class="ion-ios-arrow-left"></i></a></li>
            		<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">...</a></li>
					<li><a href="#">21</a></li>
					<li><a href="#">22</a></li>
					<li class="icon-next"><a href="#"><i class="ion-ios-arrow-right"></i></a></li>
            	</ul>
			</div>
		</div>
	</div>
		
<!--list 페이지 구현의 몸통부 끝. 이하 footer 등-->
	
<%@include file="../../includes/footer.jsp" %>