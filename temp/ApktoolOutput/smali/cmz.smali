.class public final Lcmz;
.super Lcmp;
.source "ConfirmVerificationRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p5, p6}, Lcmp;-><init>(Ljava/lang/String;Lcmg;Lcmm;)V

    .line 19
    iput-object p4, p0, Lcmz;->e:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcmz;->f:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcmz;->g:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcmz;->b:Z

    .line 23
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 27
    invoke-virtual {p0}, Lcmz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcmz;->d:Lcmm;

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcmz;->b()V

    .line 36
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcmz;->d:Lcmm;

    iget-object v1, p0, Lcmz;->g:Ljava/lang/String;

    iget-object v2, p0, Lcmz;->f:Ljava/lang/String;

    iget-object v3, p0, Lcmz;->e:Ljava/lang/String;

    iget-object v0, v0, Lcmm;->a:Lcii;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    invoke-direct {v5, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "method"

    invoke-direct {v3, v5, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "token"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "https://account.wandoujia.com/v4/api/verification/confirm"

    invoke-virtual {v0, v1, v4}, Lcii;->a(Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcmz;->a(Lcom/wandoujia/account/dto/AccountResponse;)V

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcmz;->b()V

    goto :goto_0
.end method
