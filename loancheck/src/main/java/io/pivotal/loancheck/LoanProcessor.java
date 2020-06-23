package io.pivotal.loancheck;

import org.springframework.cloud.stream.annotation.Input;
import org.springframework.cloud.stream.annotation.Output;
import org.springframework.messaging.MessageChannel;
import org.springframework.messaging.SubscribableChannel;
import org.springframework.stereotype.Component;

@Component
public interface LoanProcessor {

  String APPLICATIONS_IN = "output";// Topic where the new loans appear
  String APPROVED_OUT = "approved";// Topic where the approved loans are sent
  String DECLINED_OUT = "declined";// Topic where the declined loans are sent

  @Input(APPLICATIONS_IN)
  SubscribableChannel sourceOfLoanApplications();

  @Output(APPROVED_OUT)
  MessageChannel approved();

  @Output(DECLINED_OUT)
  MessageChannel declined();

}
