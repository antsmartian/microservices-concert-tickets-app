import { TicketCreatedEvent } from "@antsmartian/mcta-common";
import { BasePublisher } from "@antsmartian/mcta-common";
import { Subjects } from "@antsmartian/mcta-common";

export class TicketCreatedPublisher extends BasePublisher<TicketCreatedEvent> {
    subject: Subjects.TicketCreated = Subjects.TicketCreated;
}