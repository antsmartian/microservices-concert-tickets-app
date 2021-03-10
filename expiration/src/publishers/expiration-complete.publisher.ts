import { ExpirationCompleteEvent } from "@antsmartian/mcta-common";
import { BasePublisher } from "@antsmartian/mcta-common";
import { Subjects } from "@antsmartian/mcta-common";

export class ExpirationCompletePublisher extends BasePublisher<ExpirationCompleteEvent> {
    subject: Subjects.ExpirationComplete = Subjects.ExpirationComplete;
}