package PtPmDv.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

@CrossOrigin
@Controller
public class IndexController {
	@RequestMapping("/")
	public String Index() {
		return "TrangChu";
	}

	@RequestMapping("/TrangChu")
	public String TrangChu() {
		return "TrangChu";
	}

	@RequestMapping("/DangNhap")
	public String DangNhap() {
		return "DangNhap";
	}

	@RequestMapping("/DangKi")
	public String Dangki() {
		return "DangKi";
	}

	@RequestMapping("/ChiTietPhong")
	public String ChiTietPhong() {
		return "ChiTietPhong";
	}
}
