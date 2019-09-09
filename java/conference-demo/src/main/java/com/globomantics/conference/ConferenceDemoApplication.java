package com.globomantics.conference;

import com.globomantics.conference.data.dtos.SessionScheduleDto;
import com.globomantics.conference.services.SessionScheduleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ConferenceDemoApplication implements CommandLineRunner {
    private static final Logger LOG = LoggerFactory.getLogger(ConferenceDemoApplication.class);

    private final SessionScheduleService sessionScheduleService;

    public ConferenceDemoApplication(SessionScheduleService sessionScheduleService) {
        this.sessionScheduleService = sessionScheduleService;
    }

    public static void main(String[] args) {
        SpringApplication.run(ConferenceDemoApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        for (SessionScheduleDto schedule : sessionScheduleService.findAll()) {
            LOG.info("[{} {}] {} {} - {}, {}", schedule.getSessionId(), schedule.getSessionName(),
                    schedule.getTimeSlot().getDate(), schedule.getTimeSlot().getStartTime(), schedule.getTimeSlot().getEndTime(),
                    schedule.getRoom());
        }
    }
}
