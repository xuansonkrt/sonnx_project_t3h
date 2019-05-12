package application.data.service;

import application.data.model.Role;
import application.data.repository.UserRoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.CriteriaBuilder;

@Service
public class UserRoleService {
    @Autowired
    UserRoleRepository userRoleRepository;

    public Role getRoleByUser( Integer userId){
        return userRoleRepository.getRoleByUser(userId);
    }

}
