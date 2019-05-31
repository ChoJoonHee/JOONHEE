package com.joonhee.letter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.joonhee.article.Article;



@Repository
public class LetterDao {
	
	static final String LIST_LETTERS = "select letterId, title, name, left(cdate,16) cdate from letter order by letterId desc limit ?,?";
	
	static final String GET_RECEIVED_LETTERS = "select title,content,senderName,left(cdate,16) cdate from letter where receiverId=?";
	
	static final String GET_Transmit_LETTERS = "select title,content,receiverId,left(cdate,16) cdate from letter where senderId=?";	
	
	static final String ADD_LETTERS = "insert letter(title,content,senderId,senderName,receiverId,receiverName) values(?,?,?,?,?,?)";

	@Autowired
	JdbcTemplate jdbcTemplate;

	RowMapper<Letter> letterRowMapper = new BeanPropertyRowMapper<>(
			Letter.class);
	
	public List<Letter> listArticles(int offset, int count) {
		return jdbcTemplate.query(LIST_LETTERS, letterRowMapper, offset,
				count);
	}
	
	public Letter getReceivedLetter(String receiverId) {
		return jdbcTemplate.queryForObject(GET_RECEIVED_LETTERS, letterRowMapper, receiverId);
	}
	
	public Letter getTransmit_LETTERS(String senderId) {
		return jdbcTemplate.queryForObject(GET_RECEIVED_LETTERS, letterRowMapper, senderId);
	}
	
	public int addletter(Letter letter) {
		return jdbcTemplate.update(ADD_LETTERS, letter.getTitle(),
				letter.getContent(), letter.getSenderId(), letter.getSenderName(), letter.getReceiverId(), letter.getReceiverName());
	}
	
}
