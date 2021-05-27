package poly.persistence.mongo;

import java.util.List;
import java.util.Map;

public interface IQuizMapper {

    List<Map<String, String>> getQuizList(String colNm);

    List<String> getQuizContList(String colNm, String quizTitle, String quizSort);
}
