.class public final Lcio;
.super Landroid/os/AsyncTask;
.source "AccountCore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/account/dto/AccountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcii;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcii;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 822
    iput-object p1, p0, Lcio;->a:Lcii;

    iput-object p2, p0, Lcio;->b:Ljava/lang/String;

    iput-object p3, p0, Lcio;->c:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Lcom/wandoujia/account/dto/AccountResponse;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://account.wandoujia.com/v4/api/oauth/wechat?code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcio;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcio;->a:Lcii;

    iget-object v1, v1, Lcii;->k:Lcml;

    iget-object v1, v1, Lcml;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcio;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 831
    const-string v1, "account"

    const-string v3, "url=%s,"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 832
    iget-object v0, p0, Lcio;->a:Lcii;

    invoke-virtual {v0}, Lcii;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    const-string v0, "Cookie"

    iget-object v1, p0, Lcio;->a:Lcii;

    invoke-virtual {v1}, Lcii;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :cond_0
    new-instance v1, Lcom/wandoujia/account/dto/AccountResponse;

    invoke-direct {v1}, Lcom/wandoujia/account/dto/AccountResponse;-><init>()V

    .line 837
    invoke-static {}, Lcii;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 839
    :try_start_0
    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 840
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    iget-object v4, p0, Lcio;->a:Lcii;

    iget-object v4, v4, Lcii;->g:Lcvo;

    const-class v5, Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {v4, v0, v5}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/AccountResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :try_start_1
    invoke-static {v2}, Ld;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 843
    const-string v2, "account"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "accountResponse="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 844
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 845
    iget-object v2, p0, Lcio;->a:Lcii;

    iput-object v1, v2, Lcii;->a:Ljava/lang/String;

    .line 847
    :cond_1
    const-string v2, "account"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "auth="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 851
    invoke-static {v3}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    .line 853
    :goto_0
    return-object v0

    .line 849
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    invoke-static {v3}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    goto :goto_0

    .line 851
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcii;->a(Lorg/apache/http/client/HttpClient;)V

    throw v0

    .line 849
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 822
    invoke-direct {p0}, Lcio;->a()Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 822
    check-cast p1, Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {p1}, Lcom/wandoujia/account/dto/AccountResponse;->getError()I

    move-result v0

    sget-object v1, Lcom/wandoujia/account/dto/AccountError;->SUCCESS:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    move-result-object v0

    iget-object v1, p0, Lcio;->a:Lcii;

    invoke-virtual {v1}, Lcii;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld;->a(Lcom/wandoujia/account/dto/AccountBean;Ljava/lang/String;)V

    iget-object v0, p0, Lcio;->a:Lcii;

    iget-object v0, v0, Lcii;->h:Landroid/os/Handler;

    new-instance v1, Lcip;

    invoke-direct {v1, p0, p1}, Lcip;-><init>(Lcio;Lcom/wandoujia/account/dto/AccountResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcio;->a:Lcii;

    iget-object v0, v0, Lcii;->h:Landroid/os/Handler;

    new-instance v1, Lciq;

    invoke-direct {v1, p0, p1}, Lciq;-><init>(Lcio;Lcom/wandoujia/account/dto/AccountResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
