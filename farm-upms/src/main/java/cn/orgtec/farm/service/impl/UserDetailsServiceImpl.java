package cn.orgtec.farm.service.impl;

import cn.orgtec.farm.mapper.SysUserMapper;
import lombok.AllArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.NoSuchElementException;

@Service("userDetailsService")
@AllArgsConstructor
public class UserDetailsServiceImpl implements UserDetailsService {

    private SysUserMapper sysUserMapper;

    @Transactional(readOnly = true)
    @Override
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        try {
//            User user = sysUserMapper.findByLogin(login).get();
//            return new UserPrincipal(usersRepository.findByLogin(login).get());
            return null;
        } catch (NoSuchElementException e) {
            throw new UsernameNotFoundException("User " + login + " not found.", e);
        }
    }

}