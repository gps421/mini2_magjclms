package kr.co.magiclms.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.co.magiclms.domain.Content;

public interface ContentMapper {
	List<Content> selectContent(@Param("studentNo") int studentNo, @Param("courseNo") int courseNo);
	Content insertContent(Content content);
	Content insertContentFile(Content contentFile);
}
	