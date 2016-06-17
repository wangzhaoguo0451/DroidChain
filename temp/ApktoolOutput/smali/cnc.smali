.class public final Lcnc;
.super Lcmp;
.source "OneKeyRegisterRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field e:Landroid/os/CountDownTimer;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Lcnf;


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
    .line 32
    invoke-direct {p0, p4, p5, p6}, Lcmp;-><init>(Ljava/lang/String;Lcmg;Lcmm;)V

    .line 33
    iput-object p1, p0, Lcnc;->f:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcnc;->g:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcnc;->h:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic a(Lcnc;)Landroid/os/CountDownTimer;
    .locals 1
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcnc;->e:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic b(Lcnc;)Lcnf;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcnc;->i:Lcnf;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 40
    invoke-virtual {p0}, Lcnc;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 41
    iget-object v0, p0, Lcnc;->d:Lcmm;

    if-nez v0, :cond_1

    .line 42
    invoke-virtual {p0}, Lcnc;->b()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v1, p0, Lcnc;->d:Lcmm;

    iget-object v2, p0, Lcnc;->f:Ljava/lang/String;

    iget-object v3, p0, Lcnc;->g:Ljava/lang/String;

    iget-object v0, p0, Lcnc;->h:Ljava/lang/String;

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

    const-string v7, ""

    invoke-direct {v2, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "oneKeyRegister"

    const-string v7, "true"

    invoke-direct {v2, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "phoenix2,unknown"

    :cond_2
    const-string v2, "SDK_CHANNEL"

    invoke-static {v2}, Lchv;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "SDK_CHANNEL"

    invoke-static {v2}, Lchv;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "source"

    invoke-direct {v2, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "seccode"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {v1}, Lcii;->a(Lcom/wandoujia/account/dto/DeviceBean;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const-string v0, "https://account.wandoujia.com/v4/api/register"

    invoke-virtual {v4, v0, v5}, Lcii;->a(Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getError()I

    move-result v1

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->SUCCESS:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v2}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v2

    if-ne v1, v2, :cond_7

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    invoke-virtual {v4}, Lcii;->c()V

    .line 48
    :goto_1
    invoke-virtual {p0, v0}, Lcnc;->a(Lcom/wandoujia/account/dto/AccountResponse;)V

    .line 49
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getError()I

    move-result v0

    sget-object v1, Lcom/wandoujia/account/dto/AccountError;->SUCCESS:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcnc;->i:Lcnf;

    if-nez v0, :cond_6

    .line 51
    new-instance v0, Lcnf;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcnf;-><init>(Lcnc;Landroid/os/Handler;)V

    iput-object v0, p0, Lcnc;->i:Lcnf;

    .line 53
    :cond_6
    iget-object v0, p0, Lcnc;->e:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_8

    .line 54
    iget-object v0, p0, Lcnc;->e:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 55
    iget-object v0, p0, Lcnc;->e:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 78
    :goto_2
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 79
    sget-object v1, Ld;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcnc;->i:Lcnf;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 45
    :cond_7
    new-instance v1, Lcom/wandoujia/account/dto/WandouResponse;

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getError()I

    move-result v2

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/account/dto/WandouResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4}, Lcii;->d()V

    goto :goto_1

    .line 57
    :cond_8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcnd;

    invoke-direct {v1, p0}, Lcnd;-><init>(Lcnc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 85
    :cond_9
    invoke-virtual {p0}, Lcnc;->b()V

    goto/16 :goto_0
.end method
