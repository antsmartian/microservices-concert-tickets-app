import { OrderCreatedEvent } from "@antsmartian/mcta-common";
import { BasePublisher } from "@antsmartian/mcta-common";
import { Subjects } from "@antsmartian/mcta-common";

export class OrderCreatedPublisher extends BasePublisher<OrderCreatedEvent> {
    subject: Subjects.OrderCreated = Subjects.OrderCreated;
}