package poly.persistence.mongo;

import java.util.Map;

public interface IUserMapper {

    void insertUser(String colNm, Map<String, Object> rMap) throws Exception;

    Map<String, String> getUserExist(String colNm, String userEmail) throws Exception;

    int getUserInfo(String colNm, Map<String, String> pMap) throws Exception;
}
