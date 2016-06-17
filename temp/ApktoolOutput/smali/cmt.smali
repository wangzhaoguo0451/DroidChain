.class public final Lcmt;
.super Lcmp;
.source "BindAccountRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p5, p6, p7}, Lcmp;-><init>(Ljava/lang/String;Lcmg;Lcmm;)V

    .line 16
    iput-object p1, p0, Lcmt;->e:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcmt;->f:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcmt;->g:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcmt;->b:Z

    .line 20
    iput-object p3, p0, Lcmt;->h:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 25
    invoke-virtual {p0}, Lcmt;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    iget-object v0, p0, Lcmt;->d:Lcmm;

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcmt;->b()V

    .line 34
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcmt;->d:Lcmm;

    iget-object v1, p0, Lcmt;->e:Ljava/lang/String;

    iget-object v2, p0, Lcmt;->f:Ljava/lang/String;

    iget-object v3, p0, Lcmt;->h:Ljava/lang/String;

    iget-object v4, p0, Lcmt;->g:Ljava/lang/String;

    iget-object v0, v0, Lcmm;->a:Lcii;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "password"

    invoke-direct {v6, v7, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "origin_password"

    invoke-direct {v2, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "account"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "https://account.wandoujia.com/v4/api/bindAccount"

    invoke-virtual {v0, v1, v5}, Lcii;->a(Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcmt;->a(Lcom/wandoujia/account/dto/AccountResponse;)V

    goto :goto_0

    .line 32
    :cond_3
    invoke-virtual {p0}, Lcmt;->b()V

    goto :goto_0
.end method
