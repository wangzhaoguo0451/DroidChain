.class final Ldis;
.super Landroid/os/AsyncTask;
.source "AppHistorySpinnerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ldir;


# direct methods
.method constructor <init>(Ldir;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Ldis;->a:Ldir;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 6

    .prologue
    .line 63
    iget-object v0, p0, Ldis;->a:Ldir;

    iget-object v1, v0, Ldir;->b:Ldiq;

    iget-object v0, p0, Ldis;->a:Ldir;

    iget-object v0, v0, Ldir;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "http://apps.wandoujia.com/api/v1/applist/user/apps"

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Cookie"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wdj_auth="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v3, Lcom/wandoujia/jupiter/library/presenter/AppHistorySpinnerPresenter$2;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4, v0}, Lcom/wandoujia/jupiter/library/presenter/AppHistorySpinnerPresenter$2;-><init>(Ldiq;ILjava/lang/String;)V

    invoke-static {v3}, Lcom/wandoujia/base/utils/JsonSerializer;->toJson(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v4, "Content-Type"

    const-string v5, "application/json; charset=utf-8"

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v0, Lfwu;

    invoke-direct {v0}, Lfwu;-><init>()V

    iput-object v2, v0, Lfwu;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Ldit;

    invoke-direct {v2, v1}, Ldit;-><init>(Ldiq;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ldis;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
