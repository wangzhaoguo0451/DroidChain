.class public final Lcmx;
.super Lcmp;
.source "CheckVerificationRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p4, p5}, Lcmp;-><init>(Ljava/lang/String;Lcmg;Lcmm;)V

    .line 18
    iput-object p3, p0, Lcmx;->e:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcmx;->f:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcmx;->b:Z

    .line 21
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 25
    invoke-virtual {p0}, Lcmx;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcmx;->d:Lcmm;

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcmx;->b()V

    .line 34
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcmx;->d:Lcmm;

    iget-object v1, p0, Lcmx;->f:Ljava/lang/String;

    iget-object v2, p0, Lcmx;->e:Ljava/lang/String;

    iget-object v0, v0, Lcmm;->a:Lcii;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "method"

    invoke-direct {v4, v5, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    invoke-direct {v2, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "https://account.wandoujia.com/v4/api/verification/check"

    invoke-virtual {v0, v1, v3}, Lcii;->a(Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcmx;->a(Lcom/wandoujia/account/dto/AccountResponse;)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcmx;->b()V

    goto :goto_0
.end method
