package board.web;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import board.service.BoardService;

@Controller
public class BoardController {

	@Resource(name="boardService")
	private BoardService boardService;
	
	@RequestMapping(value="/test.do", method = RequestMethod.GET)
	public String test() {
		
		return "/board";
	}
	
	@RequestMapping(value="/board.do", method = RequestMethod.GET)
	public ModelAndView getBoardList(){
		ModelAndView mav = new ModelAndView();
		List<HashMap<String, Object>> result = boardService.getBoard();
		
		mav.setViewName("/board");
		mav.addObject("result", result);
		
		return mav;
	}
	
}
