package application.data.service;

import application.data.model.Cart;
import application.data.model.Message;
import application.data.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MessageService  {
    @Autowired
    MessageRepository messageRepository;

    public void update(Message message) {
        messageRepository.save(message);
    }

}
