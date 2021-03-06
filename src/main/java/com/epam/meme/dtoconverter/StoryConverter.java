package com.epam.meme.dtoconverter;

import com.epam.meme.dto.StoryDto;
import com.epam.meme.dto.StoryUpdateDto;
import com.epam.meme.entity.Story;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class StoryConverter {
    private final ModelMapper modelMapper;

    public StoryConverter(@Autowired ModelMapper modelMapper) {
        this.modelMapper = modelMapper;
    }

    public Story convertToEntity(StoryDto storyDto) {
        return modelMapper.map(storyDto, Story.class);
    }

    public Story convertToEntityForUpdate(StoryUpdateDto storyUpdateDto) {
        return modelMapper.map(storyUpdateDto, Story.class);
    }

    public StoryDto convertToDto(Story story){
        return modelMapper.map(story, StoryDto.class);
    }
}
