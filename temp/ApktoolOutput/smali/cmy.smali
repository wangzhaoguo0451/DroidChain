.class public final Lcmy;
.super Lcmp;
.source "CompleteProfileRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p2, p3, p4}, Lcmp;-><init>(Ljava/lang/String;Lcmg;Lcmm;)V

    .line 13
    iput-object p1, p0, Lcmy;->e:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 19
    invoke-virtual {p0}, Lcmy;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p0, Lcmy;->d:Lcmm;

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcmy;->b()V

    .line 28
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcmy;->d:Lcmm;

    iget-object v1, p0, Lcmy;->e:Ljava/lang/String;

    iget-object v0, v0, Lcmm;->a:Lcii;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "username"

    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "password"

    invoke-direct {v2, v7, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nick"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "telephone"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "email"

    invoke-direct {v1, v2, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "https://account.wandoujia.com/v4/api/completeProfile"

    invoke-virtual {v0, v1, v6}, Lcii;->a(Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcmy;->a(Lcom/wandoujia/account/dto/AccountResponse;)V

    goto :goto_0

    .line 26
    :cond_5
    invoke-virtual {p0}, Lcmy;->b()V

    goto :goto_0
.end method
