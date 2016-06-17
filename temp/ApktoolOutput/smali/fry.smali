.class public final Lfry;
.super Ljava/lang/Object;
.source "ZendeskHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketRequest;

.field private synthetic c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketRequest;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lfry;->a:Ljava/lang/String;

    iput-object p2, p0, Lfry;->b:Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketRequest;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfry;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 458
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lfry;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lfru;->a(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "?signiture="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&timestamp="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 461
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    iget-object v2, p0, Lfry;->b:Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketRequest;

    invoke-static {v2}, Lcom/wandoujia/base/utils/JsonSerializer;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 463
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v1, Lfwu;

    invoke-direct {v1}, Lfwu;-><init>()V

    .line 465
    iput-object v0, v1, Lfwu;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 466
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpResponse;

    .line 467
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 468
    const-string v2, "Match"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "statusCode::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_1

    .line 470
    iget-boolean v1, p0, Lfry;->c:Z

    if-eqz v1, :cond_0

    .line 471
    new-instance v1, Lcom/wandoujia/rpc/http/processor/GZipHttpResponseProcessor;

    invoke-direct {v1}, Lcom/wandoujia/rpc/http/processor/GZipHttpResponseProcessor;-><init>()V

    new-instance v2, Lfsf;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lfsf;-><init>(B)V

    invoke-static {v1, v2}, Lcom/wandoujia/rpc/http/processor/ProcessorConnector;->connect(Lcom/wandoujia/rpc/http/processor/Processor;Lcom/wandoujia/rpc/http/processor/Processor;)Lcom/wandoujia/rpc/http/processor/ProcessorConnector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/rpc/http/processor/ProcessorConnector;->process(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$ForTicketId;

    .line 474
    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$ForTicketId;->getTicket()Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketDetail;->getId()J

    move-result-wide v0

    .line 475
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 477
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->g()Ljava/util/List;

    move-result-object v2

    .line 478
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-static {v2}, Lcom/wandoujia/p4/configs/Config;->a(Ljava/util/List;)V

    .line 480
    invoke-static {v0, v1}, Lcom/wandoujia/p4/configs/Config;->b(J)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/configs/Config;->a(JI)V

    .line 483
    :cond_0
    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lfrz;

    invoke-direct {v1}, Lfrz;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 510
    :goto_0
    return-void

    .line 492
    :cond_1
    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lfsa;

    invoke-direct {v1}, Lfsa;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lfsb;

    invoke-direct {v1}, Lfsb;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
