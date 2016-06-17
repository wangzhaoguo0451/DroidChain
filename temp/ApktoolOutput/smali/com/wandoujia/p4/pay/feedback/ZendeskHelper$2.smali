.class Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2;
.super Ljava/lang/Object;
.source "ZendeskHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;

.field final synthetic val$ticktetRequest:Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;Ljava/lang/String;Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2;->this$0:Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2;->val$ticktetRequest:Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 381
    invoke-static {}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getCurrentConfig()Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 385
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2;->this$0:Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;

    iget-object v3, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2;->val$url:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #calls: Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->genSignituredUrl(Ljava/lang/String;J)Ljava/lang/String;
    invoke-static {v2, v3, v4, v5}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->access$000(Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 388
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    iget-object v3, p0, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2;->val$ticktetRequest:Lcom/wandoujia/p4/pay/model/ZendeskModels$TicktetRequest;

    invoke-static {v3}, Lcom/wandoujia/p4/pay/utils/ExternUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 390
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/HttpUtil;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 392
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 393
    const-string v2, "FeedBack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "statusCode::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wandoujia/p4/pay/utils/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_0

    .line 409
    invoke-static {}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->access$100()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2$1;

    invoke-direct {v2, p0, v0}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2$1;-><init>(Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 435
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-static {}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->access$100()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2$2;

    invoke-direct {v2, p0, v0}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2$2;-><init>(Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper;->access$100()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2$3;

    invoke-direct {v2, p0, v0}, Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2$3;-><init>(Lcom/wandoujia/p4/pay/feedback/ZendeskHelper$2;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
