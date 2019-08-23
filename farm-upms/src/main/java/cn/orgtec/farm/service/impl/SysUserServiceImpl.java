package cn.orgtec.farm.service.impl;

import cn.hutool.core.util.ArrayUtil;
import cn.orgtec.farm.common.core.constant.CommonConstants;
import cn.orgtec.farm.dto.SysUserDetails;
import cn.orgtec.farm.dto.UserDTO;
import cn.orgtec.farm.entity.SysUser;
import cn.orgtec.farm.entity.SysUserRole;
import cn.orgtec.farm.mapper.SysUserMapper;
import cn.orgtec.farm.mapper.SysUserRoleMapper;
import cn.orgtec.farm.service.SysUserRoleService;
import cn.orgtec.farm.service.SysUserService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 用户接口实现类
 *
 * @author Yibo Zhang
 * @date 2019/08/10
 */
@Slf4j
@Service
@AllArgsConstructor
public class SysUserServiceImpl extends ServiceImpl<SysUserMapper, SysUser> implements SysUserService {
    private static final PasswordEncoder ENCODER = new BCryptPasswordEncoder();
    private final SysUserRoleService sysUserRoleService;
    private final SysUserRoleMapper sysUserRoleMapper;


    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean saveUser(UserDTO userDto) {
        SysUser sysUser = new SysUser();
        BeanUtils.copyProperties(userDto, sysUser);
        sysUser.setDelFlag(CommonConstants.STATUS_NORMAL);
        sysUser.setPassword(ENCODER.encode(userDto.getPassword()));
        baseMapper.insert(sysUser);
        List<SysUserRole> userRoleList = userDto.getRole()
                .stream().map(roleId -> {
                    SysUserRole userRole = new SysUserRole();
                    userRole.setUserId(sysUser.getUserId());
                    userRole.setRoleId(roleId);
                    return userRole;
                }).collect(Collectors.toList());
        return sysUserRoleService.saveBatch(userRoleList);
    }

    @Override
    public SysUserDetails getUserDetailsByUsername(String username) {

        SysUser condition = new SysUser();
        condition.setUsername(username);
        return makeDetails(this.getOne(new QueryWrapper<>(condition)));
    }

    private SysUserDetails makeDetails(SysUser user) {

        SysUserDetails details = new SysUserDetails();
        details.setUser(user);

        // 获取角色和权限
        List<Integer> roleIds = new ArrayList<>();
        LambdaQueryWrapper<SysUserRole> lambdaQuery = Wrappers.lambdaQuery();
        lambdaQuery.eq(SysUserRole::getUserId, user.getUserId());
        List<SysUserRole> sysUserRoles = sysUserRoleMapper.selectList(lambdaQuery);

        sysUserRoles.forEach(role -> roleIds.add(role.getRoleId()));
        details.setRoles(ArrayUtil.toArray(roleIds, Integer.class));
        return details;
    }
}
