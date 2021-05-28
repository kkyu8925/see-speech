package poly.persistence.mongo.impl;

import com.mongodb.client.MongoCollection;
import org.apache.log4j.Logger;
import org.bson.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Component;
import poly.persistence.mongo.IQuizMapper;
import poly.persistence.mongo.comm.AbstractMongoDBCommon;
import poly.util.CmmUtil;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

@Component("QuizMapper")
public class QuizMapper extends AbstractMongoDBCommon implements IQuizMapper {

    @Autowired
    private MongoTemplate mongodb;

    private final Logger log = Logger.getLogger(this.getClass());

    @Override
    public List<Map<String, String>> getQuizList(String colNm) throws Exception {

        log.info(this.getClass().getName() + ".getQuizList Start!");

        List<Map<String, String>> rQuizList = new ArrayList<>();

        MongoCollection<Document> collection = mongodb.getCollection(colNm);

        // Created with Studio 3T, the IDE for MongoDB - https://studio3t.com/

        Document query = new Document();

        Consumer<Document> processBlock = document -> {

            String quizTitle = CmmUtil.nvl(document.getString("quizTitle"));
            String quizSort = CmmUtil.nvl(document.getString("quizSort"));
            String quizLevel = CmmUtil.nvl(document.getString("quizLevel"));

            Map<String, String> rMap = new LinkedHashMap<>();

            rMap.put("quizTitle", quizTitle);
            rMap.put("quizSort", quizSort);
            rMap.put("quizLevel", quizLevel);

            // 레코드 결과를 List에 저장하기
            rQuizList.add(rMap);

        };

        collection.find(query).forEach(processBlock);

        log.info(this.getClass().getName() + ".getQuizList end!");

        return rQuizList;
    }

    @Override
    public List<String> getQuizContList(String colNm, String quizTitle, String quizSort) throws Exception {

        log.info(this.getClass().getName() + ".getQuizContList Start!");

        List<String> rQuizContList = new ArrayList<>();

        MongoCollection<Document> collection = mongodb.getCollection(colNm);

        // Created with Studio 3T, the IDE for MongoDB - https://studio3t.com/

        Document query = new Document();

        query.append("quizTitle", quizTitle);
        query.append("quizSort", quizSort);

        Document projection = new Document();

        projection.append("quizCont", "$quizCont");
        projection.append("_id", 0);

        Consumer<Document> processBlock = document -> {
            List<String> pQuizContList = document.getList("quizCont", String.class);
            rQuizContList.addAll(pQuizContList);
        };

        collection.find(query).projection(projection).forEach(processBlock);

        log.info(this.getClass().getName() + ".getQuizContList end!");

        return rQuizContList;
    }
}
