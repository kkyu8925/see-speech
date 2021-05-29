package poly.service;

import java.util.Map;

public interface IUserService {

    void insertUser(Map<String, Object> rMap) throws Exception;

    Map<String, String> getUserExist(String userEmail) throws Exception;

    int getUserInfo(Map<String, String> pMap) throws Exception;
}
