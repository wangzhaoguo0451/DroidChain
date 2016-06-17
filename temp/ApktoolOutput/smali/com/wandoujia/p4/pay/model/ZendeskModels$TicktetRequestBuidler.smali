.class public Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequestBuidler;
.super Ljava/lang/Object;
.source "ZendeskModels.java"


# static fields
.field private static final SUBJECT_LENGTH:I = 0x32


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x32

    .line 25
    new-instance v1, Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;

    invoke-direct {v1}, Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;-><init>()V

    .line 27
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_0
    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;->setSubject(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketComment;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketComment;-><init>()V

    .line 34
    invoke-virtual {v0, p3}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketComment;->setBody(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;->setComment(Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketComment;)V

    .line 36
    new-instance v0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketRequester;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketRequester;-><init>()V

    .line 37
    invoke-virtual {v0, p2}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketRequester;->setName(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p2}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketRequester;->setEmail(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;->setRequester(Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketRequester;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v2, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;

    const v3, 0x169f845

    invoke-direct {v2, v3, p1}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v2, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;

    const v3, 0x1547d02

    invoke-static {p0}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->getUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v2, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;

    const v3, 0x154c433

    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getSdkReleaseVersion()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v2, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;

    const v3, 0x15493dd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v2, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;

    const v3, 0x15493d3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicketCustomFieldOptionItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;->setCustom_fields(Ljava/util/List;)V

    .line 54
    if-eqz p4, :cond_0

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    const-string v2, "PARAM_MEDIA_ID"

    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v2, "PARAM_MEDIA_NAME"

    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;->setTags(Ljava/util/ArrayList;)V

    .line 60
    :cond_0
    new-instance v0, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;-><init>()V

    .line 61
    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;->setTicket(Lcom/wandoujia/p4/pay/model/ZendeskModels$Ticket;)V

    .line 62
    return-object v0

    :cond_1
    move-object v0, p3

    .line 30
    goto/16 :goto_0
.end method
