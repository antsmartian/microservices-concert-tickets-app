import { TicketCreatedEvent, TicketUpdatedEvent } from "@antsmartian/mcta-common";
import { BasePublisher } from "@antsmartian/mcta-common";
import { Subjects } from "@antsmartian/mcta-common";

export class TicketUpdatedPublisher extends BasePublisher<TicketUpdatedEvent> {
    subject: Subjects.TicketUpdated = Subjects.TicketUpdated;
}