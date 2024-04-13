<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Contact</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="view\assets\home\img\favicon.png">

        <!-- all css here -->
        <%@include file="../../common/web/add_css.jsp"%>
    </head>
    <body>
        <!-- Add your site or application content here -->

        <!--pos page start-->
        <div class="pos_page">
            <div class="container">
                <!--pos page inner-->
                <div class="pos_page_inner">  
                    <!--header area -->
                    <%@include file="../../common/web/header.jsp"%>
                    <!--header end -->
                    <!--breadcrumbs area start-->
                    <div class="breadcrumbs_area">
                        <div class="row">
                            <div class="col-12">
                                <div class="breadcrumb_content">
                                    <ul>
                                        <li><a href="DispatchServlet">home</a></li>
                                        <li><i class="fa fa-angle-right"></i></li>
                                        <li>contact</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!--breadcrumbs area end-->

                    <!--contact area start-->
                    <div class="contact_area">
                        <div class="row">
                            <div class="col-lg-6 col-md-12">
                                <div class="contact_message">
                                    <h3>Tell us your project</h3>   
                                    <form id="contact-form" method="POST" action="EmailServlet">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <input name="name" placeholder="Name *" type="text" value="<c:if test="${requestScope.NAME_CUSTOMER != null}">${requestScope.NAME_CUSTOMER}</c:if>">    
                                            </div>
                                            <div class="col-lg-6">
                                                <input name="email" placeholder="Email *" type="email" value="<c:if test="${requestScope.EMAIL_CUSTOMER != null}">${requestScope.EMAIL_CUSTOMER}</c:if>">    
                                            </div>
                                            <div class="col-12">
                                                <div class="contact_textarea">
                                                    <textarea placeholder="Message *" name="message" class="form-control2" >${requestScope.TEXT != null ? requestScope.TEXT : ""}</textarea>     
                                                </div>   
                                                <button type="submit" name="action" value="sendEmail"> Send Message </button>  
                                            </div> 
                                            <c:if test="${requestScope.CHECK == 'success'}">
                                                <div class="col-12">
                                                    <span class="form-messege" style='color: green;'>${requestScope.MESSAGE}</span>
                                                </div>
                                            </c:if>
                                            <c:if test="${requestScope.CHECK == 'fail'}">
                                                <div class="col-12">
                                                    <span class="form-messege" style='color: red;'>${requestScope.MESSAGE}</span>
                                                </div>
                                            </c:if>
                                        </div>
                                    </form>    
                                </div> 
                            </div>

                            <div class="col-lg-6 col-md-12">
                                <div class="contact_message contact_info">
                                    <h3>contact us</h3>    
                                    <p>Tại HD Motor Store, bạn không chỉ sở hữu một chiếc xe phân khối lớn, 
                                    mà còn là một biểu tượng của đẳng cấp và phong cách. Với đội ngũ nhân viên chuyên nghiệp, 
                                    giàu kinh nghiệm và am hiểu về xe, chúng tôi cam kết tư vấn tận tâm, 
                                    hỗ trợ bạn lựa chọn được chiếc xe phù hợp nhất với nhu cầu và sở thích của mình.</p>
                                    <ul>
                                        <li><i class="fa fa-fax"></i>  Address : 68 Đ. Quảng Hàm, Phường 5, Gò Vấp, Thành phố Hồ Chí Minh 700000, Việt Nam</li>
                                        <li><i class="fa fa-envelope-o"></i> <a href="#">huyle141609@gmail.com</a></li>
                                        <li><i class="fa fa-phone"></i> 086 202 7694</li>
                                    </ul>        
                                    <h3><strong>Working hours</strong></h3>
                                    <p><strong>Monday – Saturday</strong>:  08AM – 20PM</p>       
                                </div> 
                            </div>
                        </div>
                    </div>

                    <!--contact area end-->

                </div>
                <!--pos page inner end-->
            </div>
        </div>
        <!--pos page end-->

        <!--footer area start-->
        <%@include file="../../common/web/footer.jsp"%>
        <!--footer area end-->






        <!-- all js here -->
        <%@include file="../../common/web/add_js.jsp"%>
    </body>
</html>
