.class public final Lcnj;
.super Lcmp;
.source "SendVerificationRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p4, p5}, Lcmp;-><init>(Ljava/lang/String;Lcmg;Lcmm;)V

    .line 15
    iput-object p3, p0, Lcnj;->f:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcnj;->e:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcnj;->b:Z

    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 22
    invoke-virtual {p0}, Lcnj;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcnj;->d:Lcmm;

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcnj;->b()V

    .line 31
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcnj;->d:Lcmm;

    iget-object v1, p0, Lcnj;->e:Ljava/lang/String;

    iget-object v2, p0, Lcnj;->f:Ljava/lang/String;

    iget-object v0, v0, Lcmm;->a:Lcii;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "token"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "method"

    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "https://account.wandoujia.com/v4/api/verification/send"

    invoke-virtual {v0, v1, v3}, Lcii;->a(Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcnj;->a(Lcom/wandoujia/account/dto/AccountResponse;)V

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcnj;->b()V

    goto :goto_0
.end method
