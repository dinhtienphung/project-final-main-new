package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.AccountBanking;
import com.mycompany.spring_mvc_project_final.repository.AccountBankingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountBankingService {
    @Autowired
    AccountBankingRepository accountBankingRepository;

    public AccountBanking getAccountBankingByAccountId (int id) {
        return (AccountBanking) accountBankingRepository.getAccountBankingByAccountId(id);
    }



    public void save(AccountBanking accountBanking) { accountBankingRepository.save(accountBanking);
    }
}
