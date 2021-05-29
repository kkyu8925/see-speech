package poly.persistence.mongo.impl;

import com.mongodb.client.MongoCollection;
import org.apache.log4j.Logger;
import org.bson.Document;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Component;
import poly.persistence.mongo.IUserMapper;
import poly.persistence.mongo.comm.AbstractMongoDBCommon;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

@Component("UserMapper")
public class UserMapper extends AbstractMongoDBCommon implements IUserMapper {

    @Autowired
    private MongoTemplate mongodb;

    private final Logger log = Logger.getLogger(this.getClass());

    @Override
    public void insertUser(String colNm, Map<String, Object> rMap) throws Exception {

        log.info(this.getClass().getName() + ".insertUser Start!");

        if (rMap == null) {
            rMap = new HashMap<>();
        }

        // 컬렉션이 없다면 컬렉션 생성
        super.createCollection(colNm, "userEmail");

        MongoCollection<Document> collection = mongodb.getCollection(colNm);

        collection.insertOne(new Document(rMap));

        log.info(this.getClass().getName() + ".insertUser End!");

    }

    @Override
    public Map<String, String> getUserExist(String colNm, String userEmail) throws Exception {

        log.info(this.getClass().getName() + ".getUserExist Start!");

        Map<String, String> rMap = new HashMap<>();

        MongoCollection<Document> collection = mongodb.getCollection(colNm);

        // Created with Studio 3T, the IDE for MongoDB - https://studio3t.com/

        Document query = new Document();

        query.append("userEmail", userEmail);

        Consumer<Document> processBlock = document -> rMap.put("res", "exist");

        collection.find(query).forEach(processBlock);

        log.info(this.getClass().getName() + ".getUserExist End!");

        return rMap;
    }

    @Override
    public int getUserInfo(String colNm, Map<String, String> pMap) throws Exception {

        log.info(this.getClass().getName() + ".getUserInfo start");

        List<ObjectId> rList = new ArrayList<>();

        MongoCollection<Document> collection = mongodb.getCollection(colNm);

        // Created with Studio 3T, the IDE for MongoDB - https://studio3t.com/

        Document query = new Document();

        query.append("userEmail", pMap.get("user_email"));
        query.append("userPw", pMap.get("user_pw"));

        Consumer<Document> processBlock = new Consumer<Document>() {
            @Override
            public void accept(Document document) {
                ObjectId _id = document.getObjectId("_id");
                rList.add(_id);
            }
        };

        collection.find(query).forEach(processBlock);

        log.info(this.getClass().getName() + ".getUserInfo end");

        if (rList.isEmpty()) {
            return 0;
        } else {
            return 1;
        }

    }
}
