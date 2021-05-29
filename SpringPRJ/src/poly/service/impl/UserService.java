package poly.service.impl;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import poly.persistence.mongo.IUserMapper;
import poly.service.IUserService;

import javax.annotation.Resource;
import java.util.Map;

@Service("UserService")
public class UserService implements IUserService {

    private final Logger log = Logger.getLogger(this.getClass());
    // mongoDB collection name
    private final String colNm = "UserCollection";

    @Resource(name = "UserMapper")
    private IUserMapper userMapper;

    @Override
    public void insertUser(Map<String, Object> rMap) throws Exception {

        log.info(this.getClass().getName() + ".insertUser start");

        userMapper.insertUser(colNm, rMap);

        log.info(this.getClass().getName() + ".insertUser end");

    }

    @Override
    public Map<String, String> getUserExist(String userEmail) throws Exception {

        log.info(this.getClass().getName() + ".getUserExist start");

        Map<String, String> rMap = userMapper.getUserExist(colNm, userEmail);

        log.info(this.getClass().getName() + ".getUserExist end");

        return rMap;
    }

    @Override
    public int getUserInfo(Map<String, String> pMap) throws Exception {

        log.info(this.getClass().getName() + ".getUserInfo start");

        int res = userMapper.getUserInfo(colNm, pMap);

        log.info(this.getClass().getName() + ".getUserInfo end");

        return res;
    }
}
