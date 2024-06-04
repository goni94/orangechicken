package controller.record;

import java.sql.Timestamp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import data.dto.AccountsDto;
import data.dto.TransactionsDto;
import data.service.AccountsService;
import data.service.TransactionsService;

@Controller
public class RecordController {

    @Autowired
    private AccountsService accountService;

    @Autowired
    private TransactionsService transactionService;

    @GetMapping("/record/sleep")
    public String goSleep(){
        return "record/sleep";
    }
    
    @GetMapping("/record/record")
    public String goDeposit(){
        return "record/record";
    }
    
}