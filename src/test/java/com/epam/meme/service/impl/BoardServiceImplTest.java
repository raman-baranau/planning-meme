package com.epam.meme.service.impl;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import com.epam.meme.config.logic.ApplicationConfiguration;
import com.epam.meme.entity.Board;
import com.epam.meme.entity.User;
import com.epam.meme.service.BoardService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@ActiveProfiles("test")
@ContextConfiguration(classes = {ApplicationConfiguration.class})
@Transactional
public class BoardServiceImplTest {

    @Autowired
    private BoardService service;

    @Test
    public void  findById_found() {
        Assert.assertTrue(service.findById(1L).isPresent());
    }

    @Test
    public void  findById_notFound() {
        Assert.assertFalse(service.findById(Long.MAX_VALUE).isPresent());
    }

    @Test
    public void create_created() {
        Board board = new Board();
        User admin = mock(User.class);
        when(admin.getId()).thenReturn(1L);
        board.setAdmin(admin);
        board.setName("name");
        service.create(board);
    }

    @Test
    public void update_updated() {
        Board board = service.findById(1L).get();
        board.setName("newname");
        service.update(board);
        Assert.assertEquals("newname", service.findById(1L).get().getName());
    }

    @Test(expected = Exception.class) //TODO specify correct exception
    public void updated_notUpdated() {
        Board board = new Board();
        service.update(board);
    }

    @Test
    public void delete_deleted() {
        Board board = service.findById(1L).get();
        service.delete(board);
    }

    @Test(expected = Exception.class) //TODO specify correct exception
    public void  delete_notDeleted() {
        Board board = new Board();
        service.delete(board);
    }

}