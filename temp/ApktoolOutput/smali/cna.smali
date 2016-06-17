.class public final Lcna;
.super Lcmp;
.source "LoginRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p4, p5, p6}, Lcmp;-><init>(Ljava/lang/String;Lcmg;Lcmm;)V

    .line 22
    iput-object p1, p0, Lcna;->e:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcna;->f:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcna;->g:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 30
    invoke-virtual {p0}, Lcna;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    iget-object v0, p0, Lcna;->d:Lcmm;

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcna;->b()V

    .line 41
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v1, p0, Lcna;->d:Lcmm;

    iget-object v2, p0, Lcna;->e:Ljava/lang/String;

    iget-object v3, p0, Lcna;->f:Ljava/lang/String;

    invoke-static {}, Lchv;->h()Ljava/lang/String;

    iget-object v0, p0, Lcna;->g:Ljava/lang/String;

    iget-object v4, v1, Lcmm;->a:Lcii;

    invoke-virtual {v1, v0}, Lcmm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcmm;->e:Lcom/wandoujia/account/dto/DeviceBean;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "username"

    invoke-direct {v6, v7, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "password"

    invoke-direct {v2, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "p3"

    :cond_1
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "source"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcii;->a(Lcom/wandoujia/account/dto/DeviceBean;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const-string v0, "https://account.wandoujia.com/v4/api/login"

    invoke-virtual {v4, v0, v5}, Lcii;->a(Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getError()I

    move-result v1

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->SUCCESS:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v2}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v4}, Lcii;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ld;->a(Lcom/wandoujia/account/dto/AccountBean;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    sget-object v1, Lcom/wandoujia/account/listener/IAccountListener$LoginType;->LOGIN:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    invoke-virtual {v4, v1}, Lcii;->a(Lcom/wandoujia/account/listener/IAccountListener$LoginType;)V

    .line 37
    :goto_1
    invoke-virtual {p0, v0}, Lcna;->a(Lcom/wandoujia/account/dto/AccountResponse;)V

    goto :goto_0

    .line 35
    :cond_3
    new-instance v1, Lcom/wandoujia/account/dto/WandouResponse;

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getError()I

    move-result v2

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/account/dto/WandouResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4}, Lcii;->d()V

    goto :goto_1

    .line 39
    :cond_4
    invoke-virtual {p0}, Lcna;->b()V

    goto/16 :goto_0
.end method
