/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.78
 * Generated at: 2023-09-18 05:03:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public final class login_005fView_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("jar:file:/F:/iclass0419/projectC/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/projectC/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/login/../nav.jsp", Long.valueOf(1695013368884L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1692240732011L));
    _jspx_dependants.put("/login/../footer.jsp", Long.valueOf(1694999811608L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("java.io");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fchoose;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fotherwise;

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
    _005fjspx_005ftagPool_005fc_005fchoose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fotherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fchoose.release();
    _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.release();
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
    _005fjspx_005ftagPool_005fc_005fotherwise.release();
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <title>BELLO</title>\r\n");
      out.write("    <meta charset=\"utf-8\" />\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\r\n");
      out.write("    <meta name=\"description\" content=\"\" />\r\n");
      out.write("    <meta name=\"keywords\" content=\"\" />\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css2/login.css?=3\" />\r\n");
      out.write("    <!-- JavaScript로 헤더를 숨기고 나타나게 하는 코드 -->\r\n");
      out.write("<script>\r\n");
      out.write("    document.addEventListener('DOMContentLoaded', function () {\r\n");
      out.write("        // 페이지가 로드될 때 실행됩니다.\r\n");
      out.write("\r\n");
      out.write("        // 세션 변수 user가 비어있는지 확인하여 헤더를 숨길지 표시할지 결정합니다.\r\n");
      out.write("        // 세션 변수 user가 있으면 로그인된 상태로 간주합니다.\r\n");
      out.write("        const userSession = '");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.user}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("'; // 세션 변수 값 가져오기\r\n");
      out.write("\r\n");
      out.write("        const header = document.getElementById('header');\r\n");
      out.write("\r\n");
      out.write("        if (!userSession) {\r\n");
      out.write("            // 로그인되지 않은 상태라면 헤더를 숨깁니다.\r\n");
      out.write("            header.style.display = 'none';\r\n");
      out.write("        } else {\r\n");
      out.write("            // 로그인된 상태라면 헤더를 보여줍니다.\r\n");
      out.write("            header.style.display = 'block';\r\n");
      out.write("        }\r\n");
      out.write("    });\r\n");
      out.write("</script>\r\n");
      out.write("    \r\n");
      out.write("</head>\r\n");
      out.write("<body class=\"is-preload\">\r\n");
      out.write("<!-- Header -->\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("<body class=\"is-preload\">\r\n");
      out.write("   <!-- Header -->\r\n");
      out.write("    <header id=\"header\">\r\n");
      out.write("        <div>\r\n");
      out.write("            <div class=\"inner\">\r\n");
      out.write("                <ul>\r\n");
      out.write("                    ");
      //  c:choose
      org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_005fchoose_005f0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _005fjspx_005ftagPool_005fc_005fchoose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
      boolean _jspx_th_c_005fchoose_005f0_reused = false;
      try {
        _jspx_th_c_005fchoose_005f0.setPageContext(_jspx_page_context);
        _jspx_th_c_005fchoose_005f0.setParent(null);
        int _jspx_eval_c_005fchoose_005f0 = _jspx_th_c_005fchoose_005f0.doStartTag();
        if (_jspx_eval_c_005fchoose_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("    ");
            //  c:when
            org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_005fwhen_005f0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
            boolean _jspx_th_c_005fwhen_005f0_reused = false;
            try {
              _jspx_th_c_005fwhen_005f0.setPageContext(_jspx_page_context);
              _jspx_th_c_005fwhen_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fchoose_005f0);
              // /login/../nav.jsp(11,4) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
              _jspx_th_c_005fwhen_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty sessionScope.user}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
              int _jspx_eval_c_005fwhen_005f0 = _jspx_th_c_005fwhen_005f0.doStartTag();
              if (_jspx_eval_c_005fwhen_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                do {
                  out.write("\r\n");
                  out.write("        ");
                  //  c:if
                  org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
                  boolean _jspx_th_c_005fif_005f0_reused = false;
                  try {
                    _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
                    _jspx_th_c_005fif_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fwhen_005f0);
                    // /login/../nav.jsp(12,8) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
                    _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.user.role == 'admin'}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
                    int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
                    if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                      do {
                        out.write("\r\n");
                        out.write("            <li><a href=\"");
                        out.print( request.getContextPath());
                        out.write("/admin/admin.jsp\">관리자</a></li>\r\n");
                        out.write("            <li><a href=\"");
                        out.print( request.getContextPath());
                        out.write("/login/logout.jsp\">로그아웃</a></li>\r\n");
                        out.write("            \r\n");
                        out.write("        ");
                        int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
                        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                          break;
                      } while (true);
                    }
                    if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                      return;
                    }
                    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
                    _jspx_th_c_005fif_005f0_reused = true;
                  } finally {
                    org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f0_reused);
                  }
                  out.write("\r\n");
                  out.write("        ");
                  //  c:if
                  org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
                  boolean _jspx_th_c_005fif_005f1_reused = false;
                  try {
                    _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
                    _jspx_th_c_005fif_005f1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fwhen_005f0);
                    // /login/../nav.jsp(17,8) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
                    _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.user.role != 'admin'}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
                    int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
                    if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                      do {
                        out.write("\r\n");
                        out.write("            <li><a href=\"");
                        out.print( request.getContextPath());
                        out.write("/Notice/Notice.jsp\">공지사항</a></li>\r\n");
                        out.write("            <li><a href=\"");
                        out.print( request.getContextPath());
                        out.write("/mypage/mypage.jsp\">마이페이지</a></li>\r\n");
                        out.write("            <li><a href=\"");
                        out.print( request.getContextPath());
                        out.write("/cart/cart_select.jsp\">장바구니</a></li>\r\n");
                        out.write("            <li><a href=\"#\">고객센터</a></li>\r\n");
                        out.write("            <li><a href=\"");
                        out.print( request.getContextPath());
                        out.write("/login/logout.jsp\">로그아웃</a></li>\r\n");
                        out.write("        ");
                        int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
                        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                          break;
                      } while (true);
                    }
                    if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                      return;
                    }
                    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
                    _jspx_th_c_005fif_005f1_reused = true;
                  } finally {
                    org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f1, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f1_reused);
                  }
                  out.write("\r\n");
                  out.write("    ");
                  int evalDoAfterBody = _jspx_th_c_005fwhen_005f0.doAfterBody();
                  if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                    break;
                } while (true);
              }
              if (_jspx_th_c_005fwhen_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                return;
              }
              _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.reuse(_jspx_th_c_005fwhen_005f0);
              _jspx_th_c_005fwhen_005f0_reused = true;
            } finally {
              org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fwhen_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fwhen_005f0_reused);
            }
            out.write("\r\n");
            out.write("    ");
            //  c:otherwise
            org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_005fotherwise_005f0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _005fjspx_005ftagPool_005fc_005fotherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
            boolean _jspx_th_c_005fotherwise_005f0_reused = false;
            try {
              _jspx_th_c_005fotherwise_005f0.setPageContext(_jspx_page_context);
              _jspx_th_c_005fotherwise_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fchoose_005f0);
              int _jspx_eval_c_005fotherwise_005f0 = _jspx_th_c_005fotherwise_005f0.doStartTag();
              if (_jspx_eval_c_005fotherwise_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                do {
                  out.write("\r\n");
                  out.write("        <li><a href=\"");
                  out.print( request.getContextPath());
                  out.write("/Notice/Notice.jsp\">공지사항</a></li>\r\n");
                  out.write("        <li><a href=\"");
                  out.print( request.getContextPath());
                  out.write("/styling.jsp\" onclick=\"confirmLogin(); return false;\">마이페이지</a></li>\r\n");
                  out.write("        <li><a href=\"#\" onclick=\"confirmLogin(); return false;\">장바구니</a></li>\r\n");
                  out.write("        <li><a href=\"");
                  out.print( request.getContextPath());
                  out.write("/CustomerQnA/QnA.jsp\" onclick=\"confirmLogin(); return false;\">고객센터</a></li>\r\n");
                  out.write("        <li><a href=\"");
                  out.print( request.getContextPath());
                  out.write("/login/login_View.jsp\">로그인</a></li>\r\n");
                  out.write("    ");
                  int evalDoAfterBody = _jspx_th_c_005fotherwise_005f0.doAfterBody();
                  if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                    break;
                } while (true);
              }
              if (_jspx_th_c_005fotherwise_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                return;
              }
              _005fjspx_005ftagPool_005fc_005fotherwise.reuse(_jspx_th_c_005fotherwise_005f0);
              _jspx_th_c_005fotherwise_005f0_reused = true;
            } finally {
              org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fotherwise_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fotherwise_005f0_reused);
            }
            out.write('\r');
            out.write('\n');
            int evalDoAfterBody = _jspx_th_c_005fchoose_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fchoose_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005fc_005fchoose.reuse(_jspx_th_c_005fchoose_005f0);
        _jspx_th_c_005fchoose_005f0_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fchoose_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fchoose_005f0_reused);
      }
      out.write("\r\n");
      out.write("\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"first\">\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li><a href=\"");
      out.print( request.getContextPath());
      out.write("/clothes/clothe_outer.jsp\">OUTER</a></li>\r\n");
      out.write("                    <li><a href=\"");
      out.print( request.getContextPath());
      out.write("/clothes/clothe_top.jsp\">TOP</a></li>\r\n");
      out.write("                    <li><a href=\"");
      out.print( request.getContextPath());
      out.write("/clothes/clothe_pants.jsp\">PANTS</a></li>\r\n");
      out.write("                    <li><a href=\"");
      out.print( request.getContextPath());
      out.write("/clothes/clothe_shoes.jsp\">SHOES</a></li>\r\n");
      out.write("                    <li><a href=\"");
      out.print( request.getContextPath());
      out.write("/styling/stylingList.jsp\">STYLING</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </header>\r\n");
      out.write("\r\n");
      out.write("    <!-- Search Bar -->\r\n");
      out.write("    <div id=\"search\">\r\n");
      out.write("        <a class=\"logo\" href=\"");
      out.print( request.getContextPath());
      out.write("/index.jsp\"><strong>Bello</strong></a>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("<!-- 이 공간에 기능들 넣으시면 됩니다.(상품 목록은 메인에서 갖다 쓰셔두 돼요.) -->\r\n");
      out.write("<div class=\"container mt-3 width30\">\r\n");
      out.write("    <h2>회원 로그인</h2>\r\n");
      out.write("    \r\n");
      out.write("    <!-- 오류 메시지를 표시할 div 요소 추가 -->\r\n");
      out.write("    <div id=\"incorrect\" style=\"display: none; color: red;\">계정 정보가 일치하지 않습니다.</div>\r\n");
      out.write("    \r\n");
      out.write("    <form action=\"login.jsp\" method=\"post\">\r\n");
      out.write("        <div class=\"mb-3 mt-3\">\r\n");
      out.write("            <label for=\"userid\">아이디:</label>\r\n");
      out.write("            <input class=\"form-control\" id=\"userid\" placeholder=\"Enter id\" \r\n");
      out.write("                name=\"id\" required>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"mb-3\">\r\n");
      out.write("            <label for=\"pwd\">패스워드:</label>\r\n");
      out.write("            <input type=\"password\" class=\"form-control\" id=\"password\" placeholder=\"Enter password\" \r\n");
      out.write("                name=\"password\" required>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"form-check mb-3\">\r\n");
      out.write("            <label class=\"form-check-label\">\r\n");
      out.write("                <input class=\"form-check-input\" type=\"checkbox\" name=\"remember\"> Remember me\r\n");
      out.write("            </label>\r\n");
      out.write("        </div>\r\n");
      out.write("        <button type=\"submit\" class=\"btn btn-primary\">로그인</button>\r\n");
      out.write("        <button type=\"button\" class=\"btn btn-primary\" \r\n");
      out.write("            onclick=\"location.href='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("'\">HOME</button>\r\n");
      out.write("        <button type=\"button\" class=\"btn btn-primary\" onclick=\"location.href='register_View.jsp'\">회원가입</button>\r\n");
      out.write("    </form>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!-- 스크립트를 이용하여 오류 메시지 표시 -->\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("    var incorrectParam = '");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.incorrect}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("';\r\n");
      out.write("    if (incorrectParam === 'y') {\r\n");
      out.write("        document.getElementById('incorrect').style.display = 'block';\r\n");
      out.write("    }\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<!-- Footer -->\r\n");
      out.write("\r\n");
      out.write("  <footer id=\"footer\">\r\n");
      out.write("        <h4>&copy; Untitled Corporation. All rights reserved. Lorem ipsum dolor sit amet nullam.</h4>\r\n");
      out.write("        <ul>\r\n");
      out.write("            <li class=\"icon solid fa-map-marker-alt\"></li>\r\n");
      out.write("            <li class=\"icon solid fa-envelope\"></li>\r\n");
      out.write("            <li class=\"icon brands fa-twitter\"></li>\r\n");
      out.write("            <li class=\"icon solid fa-phone\"></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("    </footer>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- Scripts -->\r\n");
      out.write("<script src=\"assets/js/jquery.min.js\"></script>\r\n");
      out.write("<script src=\"assets/js/jquery.dropotron.min.js\"></script>\r\n");
      out.write("<script src=\"assets/js/browser.min.js\"></script>\r\n");
      out.write("<script src=\"assets/js/breakpoints.min.js\"></script>\r\n");
      out.write("<script src=\"assets/js/util.js\"></script>\r\n");
      out.write("<script src=\"assets/js/main.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
