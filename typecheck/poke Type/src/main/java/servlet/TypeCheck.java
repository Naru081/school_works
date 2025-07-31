package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Type;
import model.TypeCheckLogic;


@WebServlet("/TypeCheck")  // URLマッピングを指定
public class TypeCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TypeCheck() {
        super();
    }
    
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	        throws ServletException, IOException {
	    // doPost にリクエストを委譲
	    doPost(request, response);
	}
    
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) 
			throws ServletException, IOException {
		// フォームから値を取得
		String youStr = request.getParameter("you");
		String opponentStr = request.getParameter("opponent");

		// 入力値が空でないか確認
		if (youStr == null || opponentStr == null || youStr.isEmpty() || opponentStr.isEmpty()) {
			request.setAttribute("error", "タイプを選択してください。");
			request.getRequestDispatcher
			("WEB-INF/jsp/typeCheck.jsp").forward(request, response);
			return;
		}

		// 数値に変換
		int you = Integer.parseInt(youStr);
		int opponent = Integer.parseInt(opponentStr);

		// Type オブジェクトを作成
		Type type = new Type(you, opponent);

		// 相性判定ロジックを実行
		TypeCheckLogic logic = new TypeCheckLogic();
		logic.execute(type);

		// 結果をリクエストスコープにセット
		request.setAttribute("type", type);

		// 結果表示用の JSP にフォワード
		request.getRequestDispatcher
		("WEB-INF/jsp/typeCheckResult.jsp").forward(request, response);
	}
}