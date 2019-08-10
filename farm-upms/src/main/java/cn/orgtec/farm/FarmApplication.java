package cn.orgtec.farm;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 农家乐管理系统
 *
 * @author Yibo Zhang
 * @date 2019/08/06
 */
@SpringBootApplication
@MapperScan(basePackages = "cn.orgtec.farm.mapper")
public class FarmApplication {
    public static void main(String[] args) {
        SpringApplication.run(FarmApplication.class, args);
    }
}
