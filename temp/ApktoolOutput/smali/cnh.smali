.class public final Lcnh;
.super Lcmp;
.source "RegisterRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p5, p6, p7}, Lcmp;-><init>(Ljava/lang/String;Lcmg;Lcmm;)V

    .line 18
    iput-object p1, p0, Lcnh;->e:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcnh;->f:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcnh;->g:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcnh;->h:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 26
    invoke-virtual {p0}, Lcnh;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    iget-object v0, p0, Lcnh;->d:Lcmm;

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcnh;->b()V

    .line 38
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v2, p0, Lcnh;->d:Lcmm;

    iget-object v0, p0, Lcnh;->e:Ljava/lang/String;

    iget-object v3, p0, Lcnh;->f:Ljava/lang/String;

    iget-object v4, p0, Lcnh;->g:Ljava/lang/String;

    iget-object v1, p0, Lcnh;->h:Ljava/lang/String;

    iget-object v5, v2, Lcmm;->a:Lcii;

    const-string v6, ""

    invoke-virtual {v2, v1}, Lcmm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v2, Lcmm;->e:Lcom/wandoujia/account/dto/DeviceBean;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lchv;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Ld;->o(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Lcii;->f()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v0, Lcom/wandoujia/account/dto/AccountResponse;

    const v1, 0xf4241

    sget v2, Lcom/wandoujia/account/R$string;->account_sdk_send_sms_failure:I

    invoke-static {v2}, Ld;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/dto/AccountResponse;-><init>(ILjava/lang/String;)V

    .line 34
    :goto_1
    invoke-virtual {p0, v0}, Lcnh;->a(Lcom/wandoujia/account/dto/AccountResponse;)V

    goto :goto_0

    .line 31
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "username"

    invoke-direct {v8, v9, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "password"

    invoke-direct {v0, v8, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nick"

    invoke-direct {v0, v3, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "phoenix2,unknown"

    :goto_2
    const-string v1, "SDK_CHANNEL"

    invoke-static {v1}, Lchv;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SDK_CHANNEL"

    invoke-static {v1}, Lchv;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "source"

    invoke-direct {v1, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "seccode"

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {v2}, Lcii;->a(Lcom/wandoujia/account/dto/DeviceBean;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const-string v0, "https://account.wandoujia.com/v4/api/register"

    invoke-virtual {v5, v0, v7}, Lcii;->a(Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getError()I

    move-result v1

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->SUCCESS:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v2}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v2

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    invoke-virtual {v5}, Lcii;->c()V

    goto/16 :goto_1

    :cond_6
    new-instance v1, Lcom/wandoujia/account/dto/WandouResponse;

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getError()I

    move-result v2

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/account/dto/WandouResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5}, Lcii;->d()V

    goto/16 :goto_1

    .line 36
    :cond_7
    invoke-virtual {p0}, Lcnh;->b()V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_2
.end method
