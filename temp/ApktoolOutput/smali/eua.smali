.class public final Leua;
.super Ljava/lang/Object;
.source "ProfileHistoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Leua;->b:Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;

    iput-wide p2, p0, Leua;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    .line 147
    iget-object v0, p0, Leua;->b:Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;

    iget-wide v2, p0, Leua;->a:J

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "http://consume.wandoujia.com/api/v1/consume_history/u/add"

    invoke-direct {v7, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Cookie"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wdj_auth="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/wandoujia/p4/account/manager/ProfileHistoryManager;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v8, "r=%s"

    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v0, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity;

    sget-object v1, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;->VIDEO:Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/p4/account/http/model/HistoryContentEntity;-><init>(Lcom/wandoujia/p4/account/http/model/HistoryContentEntity$EntityType;JJLjava/lang/String;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/JsonSerializer;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    invoke-virtual {v7, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v0, Lfwu;

    invoke-direct {v0}, Lfwu;-><init>()V

    iput-object v7, v0, Lfwu;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method
