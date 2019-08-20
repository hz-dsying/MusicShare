package com.zzxx.music.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.zzxx.music.beans.Artist;
import com.zzxx.music.beans.Search;
import com.zzxx.music.beans.Song;
import com.zzxx.music.dao.SongDao;
import com.zzxx.music.utils.DataSourceUtils;

public class SongDaoImp implements SongDao {
    private QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
    @Override
    public Song addSong(Song song) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void removeSongBySongId(String songid) {
        // TODO Auto-generated method stub

    }

    @Override
    public List<Song> findAllSongs() {
        String sql = "select * from song";
        try {
            return queryRunner.query(sql, new BeanListHandler<Song>(Song.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Song> getSongBySongName(String songname) {
        String sql = "select * from song where name=?";
        try {
            return queryRunner.query(sql, new BeanListHandler<Song>(Song.class),songname);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Song> getSongByAlbumName(String albumname) {
        String sql = "select * from song where ablum=?";
        try {
            return queryRunner.query(sql, new BeanListHandler<Song>(Song.class),albumname);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Song> getSongByArtistName(String artistname) {
        String sql = "select * from song where artist=?";
        try {
            return queryRunner.query(sql, new BeanListHandler<Song>(Song.class),artistname);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    @Override
    public List<Song> findSongsByPage(int currentPage, int pageSize,String type) {
        String sql = "select * from song where type=?";
        try {
            List<Song> list = queryRunner.query(sql, new BeanListHandler<Song>(Song.class),type);
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int getCount(String type) {
        String sql = "select conut(1) from song where type=?";
        try {
            long count = (Long) queryRunner.query(sql, new ScalarHandler(),type);
            return (int) count;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public List selectAllSource(String name) {//用了得到搜索得到
        String sql = "select * from search where name like ?" ;
        Search search = new Search();
        List<Search> list = new ArrayList<Search>();
        try {
            list = queryRunner.query(sql,new BeanListHandler<Search>(Search.class),"%" + name + "%");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        List<Object>l = new ArrayList<Object>();
        for (Search a : list){
            if ("song".equals(a.getType())){
                String select = "select * from song where name = ?" ;
                Song song = null;
                try {
                    song = queryRunner.query(select,new BeanHandler<Song>(Song.class),a.getName());
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                l.add(song);
            }
            if ("artist".equals(a.getType())){
                String select = "select * from artist where name = ?";
                Artist artist = null;
                try {
                    artist = queryRunner.query(select,new BeanHandler<Artist>(Artist.class),a.getName());
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                l.add(artist);
            }
        }
        return l;
    }

    @Override
    public List getAllSong() {
        List<Song> list = new ArrayList<Song>();
        String sql = "select * from song";
        try {
            list = queryRunner.query(sql,new BeanListHandler<Song>(Song.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List getSongByType() {
        return null;
    }
}