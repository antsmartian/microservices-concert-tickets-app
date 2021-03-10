import { PaymentCreatedEvent } from "@antsmartian/mcta-common";
import { BasePublisher } from "@antsmartian/mcta-common";
import { Subjects } from "@antsmartian/mcta-common";

export class PaymentCreatedPublisher extends BasePublisher<PaymentCreatedEvent> {
    subject: Subjects.PaymentCreated = Subjects.PaymentCreated;
}