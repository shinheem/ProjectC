/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.78
 * Generated at: 2023-09-18 10:00:59 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class clothe_005finsert_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<!DOCTYPE HTML>\n");
      out.write("<!--\n");
      out.write("	Apex by Pixelarity\n");
      out.write("	pixelarity.com | hello@pixelarity.com\n");
      out.write("	License: pixelarity.com/license\n");
      out.write("-->\n");
      out.write("<!-- 웹사이트 전체적인 틀-->\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>BELLO</title>\n");
      out.write("    <meta charset=\"UTF-8\"/>\n");
      out.write("\n");
      out.write("    <meta name=\"viewport\"\n");
      out.write("          content=\"width=device-width, initial-scale=1, user-scalable=no\" />\n");
      out.write("    <meta name=\"description\" content=\"\" />\n");
      out.write("    <meta name=\"keywords\" content=\"\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/css/main.css?=3\" />\n");
      out.write("</head>\n");
      out.write("<body class=\"is-preload\">\n");
      out.write("\n");
      out.write("<!-- Header -->\n");
      out.write("<header id=\"header\">\n");
      out.write("    <div>\n");
      out.write("        <div class=\"inner\">\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"../login/login.jsp\">로그인</a></li>\n");
      out.write("                <li><a href=\"Notice.jsp\">공지사항</a></li>\n");
      out.write("                <li><a href=\"#\">마이페이지</a></li>\n");
      out.write("                <li><a href=\"generic.html\">장바구니</a></li>\n");
      out.write("                <li><a href=\"elements.html\">고객센터</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"first\">\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"list.jsp\">고객목록</a></li>\n");
      out.write("							<li><a href=\"clothesList.jsp\">상품등록</a></li>\n");
      out.write("	<!-- 로그인 폼 위에 카카오 로그인 버튼 추가 -->\n");
      out.write("							<li><a href=\"adminNotice.jsp\">공지사항</a></li>\n");
      out.write("							<li><a href=\"\">고객센터</a></li>\n");
      out.write("							<li><a href =\"../login/logout.jsp\">로그아웃</a></li>\n");
      out.write("						</ul>		\n");
      out.write("			</div>\n");
      out.write("			<div class=\"first\">\n");
      out.write("				<ul>\n");
      out.write("					<li><a href=\"../clothes/clothe_outer.jsp\">OUTER</a></li>\n");
      out.write("					<li><a href=\"../clothes/clothe_top.jsp\">TOP</a></li>\n");
      out.write("					<li><a href=\"../clothes/clothe_pants.jsp\">PANTS</a></li>\n");
      out.write("					<li><a href=\"../clothes/clothe_shoes.jsp\">SHOES</a></li>\n");
      out.write("					<li><a href=\"../styling/stylingList.jsp\">STYLING</a> <!-- 스타일링 배너 --></li>\n");
      out.write("					 </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("           \n");
      out.write("     \n");
      out.write("</header>\n");
      out.write("\n");
      out.write("<!-- Search Bar -->\n");
      out.write("<div id=\"search\">\n");
      out.write("    <a class=\"logo\" href=\"index.html\"><strong>Bello</strong></a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- 상품 등록 폼 -->\n");
      out.write("<h2>상품 등록</h2>\n");
      out.write("<form action=\"clothesInsertAction.jsp\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("    <label for=\"clothesKind\">상품 종류:</label>\n");
      out.write("    <select name=\"clothesKind\" id=\"clothesKind\">\n");
      out.write("        <option value=\"1\">아우터 데일리</option>\n");
      out.write("        <option value=\"2\">아우터 모던</option>\n");
      out.write("        <option value=\"3\">아우터 힙</option>\n");
      out.write("        <option value=\"4\">상의 데일리</option>\n");
      out.write("        <option value=\"5\">상의 모던</option>\n");
      out.write("        <option value=\"6\">상의 힙</option>\n");
      out.write("        <option value=\"7\">하의 데일리</option>\n");
      out.write("        <option value=\"8\">하의 모던</option>\n");
      out.write("        <option value=\"9\">하의 힙</option>\n");
      out.write("        <option value=\"10\">신발</option>\n");
      out.write("    </select>\n");
      out.write("     <!-- 추가: typeNum 값을 설정하기 위한 hidden 필드 -->\n");
      out.write("    <input type=\"hidden\" name=\"typeNum\" id=\"typeNum\" value=\"1\"> <!-- 기본값은 1로 설정 -->\n");
      out.write("    \n");
      out.write("    <br>\n");
      out.write("    <label for=\"price2\">가격:</label>\n");
      out.write("    <input type=\"number\" name=\"price2\" id=\"price2\">\n");
      out.write("    <br>\n");
      out.write("    <label for=\"clothesName\">상품명:</label>\n");
      out.write("    <input type=\"text\" name=\"clothesName\" id=\"clothesName\">\n");
      out.write("    <br>\n");
      out.write("    <label for=\"clothesContent\">상품 설명:</label>\n");
      out.write("    <textarea name=\"clothesContent\" id=\"clothesContent\"></textarea>\n");
      out.write("    <br>\n");
      out.write("    <label for=\"clothesImage\">상품 이미지:</label>\n");
      out.write("    <input type=\"file\" name=\"clothesImage\" id=\"clothesImage\">\n");
      out.write("    <br>\n");
      out.write("    \n");
      out.write("    <label for=\"clothesCount\">상품 수량:</label>\n");
      out.write("    <input type=\"number\" name=\"clothesCount\" id=\"clothesCount\">\n");
      out.write("    <br>\n");
      out.write("    <label for=\"useyn\">판매 여부:</label>\n");
      out.write("    <select name=\"useyn\" id=\"useyn\">\n");
      out.write("        <option value=\"Y\">판매 중</option>\n");
      out.write("        <option value=\"N\">품절</option>\n");
      out.write("    </select>\n");
      out.write("    <br>\n");
      out.write("    <input type=\"submit\" value=\"등록\">\n");
      out.write("</form>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("    // clothesKind 선택이 변경되었을 때 typeNum을 업데이트하는 함수\n");
      out.write("    document.getElementById(\"clothesKind\").addEventListener(\"change\", function() {\n");
      out.write("        // 선택한 clothesKind 값을 가져옴\n");
      out.write("        var selectedClothesKind = this.value;\n");
      out.write("\n");
      out.write("        // typeNum 필드에 선택한 clothesKind 값 설정\n");
      out.write("        document.getElementById(\"typeNum\").value = selectedClothesKind;\n");
      out.write("    });\n");
      out.write("</script>\n");
      out.write("<!-- Footer -->\n");
      out.write("<footer id=\"footer\">\n");
      out.write("    <h4>&copy; Untitled Corporation. All rights reserved. Lorem ipsum\n");
      out.write("        dolor sit amet nullam.</h4>\n");
      out.write("    <ul>\n");
      out.write("        <li class=\"icon solid fa-map-marker-alt\">\n");
      out.write("        <li class=\"icon solid fa-envelope\">\n");
      out.write("        <li class=\"icon brands fa-twitter\">\n");
      out.write("        <li class=\"icon solid fa-phone\">\n");
      out.write("    </ul>\n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("<!-- Scripts -->\n");
      out.write("<script src=\"assets/js/jquery.min.js\"></script>\n");
      out.write("<script src=\"assets/js/jquery.dropotron.min.js\"></script>\n");
      out.write("<script src=\"assets/js/browser.min.js\"></script>\n");
      out.write("<script src=\"assets/js/breakpoints.min.js\"></script>\n");
      out.write("<script src=\"assets/js/util.js\"></script>\n");
      out.write("<script src=\"assets/js/main.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
