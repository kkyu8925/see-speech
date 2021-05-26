package poly.persistence.mongo.impl;

import com.mongodb.client.MongoCollection;
import org.apache.log4j.Logger;
import org.bson.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Component;
import poly.persistence.mongo.IQuizMapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Component("QuizMapper")
public class QuizMapper implements IQuizMapper {

    @Autowired
    private MongoTemplate mongodb;

    private final Logger log = Logger.getLogger(this.getClass());

    @Override
    public List<Map<String, String>> getQuizList(String colNm) {

        log.info(this.getClass().getName() + ".getQuizList Start!");

        List<Map<String, String>> rList = new ArrayList<>();

        MongoCollection<Document> col = mongodb.getCollection(colNm);

        log.info(this.getClass().getName() + ".getQuizList end!");

        return rList;
    }
}
