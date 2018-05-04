package kr.co.magiclms.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.co.magiclms.domain.QnA;

public interface QnAMapper {
	List<QnA> selectQnAList(@Param("studentNo") int studentNo, @Param("courseNo") int courseNo);
}
