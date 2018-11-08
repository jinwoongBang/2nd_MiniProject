package kr.co.laonzena.repository.domain;

public class Comment {
   private int commentNo;
   private int boardNo;
   private String content;
   private String writer;
   public int getCommentNo() {
      return commentNo;
   }
   public void setCommentNo(int commentNo) {
      this.commentNo = commentNo;
   }
   public int getBoardNo() {
      return boardNo;
   }
   public void setBoardNo(int boardNo) {
      this.boardNo = boardNo;
   }
   public String getContent() {
      return content;
   }
   public void setContent(String content) {
      this.content = content;
   }
   public String getWriter() {
      return writer;
   }
   public void setWriter(String writer) {
      this.writer = writer;
   }
   
   
}