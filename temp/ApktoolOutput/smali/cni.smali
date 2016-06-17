.class public final Lcni;
.super Lcmp;
.source "ResetPasswordRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


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
    .line 16
    invoke-direct {p0, p4, p5, p6}, Lcmp;-><init>(Ljava/lang/String;Lcmg;Lcmm;)V

    .line 17
    iput-object p1, p0, Lcni;->g:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcni;->e:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcni;->f:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcni;->b:Z

    .line 21
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 25
    invoke-virtual {p0}, Lcni;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcni;->d:Lcmm;

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcni;->b()V

    .line 34
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcni;->d:Lcmm;

    iget-object v1, p0, Lcni;->g:Ljava/lang/String;

    iget-object v2, p0, Lcni;->e:Ljava/lang/String;

    iget-object v3, p0, Lcni;->f:Ljava/lang/String;

    iget-object v0, v0, Lcmm;->a:Lcii;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "passcode"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "password"

    invoke-direct {v2, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "username"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "https://account.wandoujia.com/v4/api/modifypassword"

    invoke-virtual {v0, v1, v4}, Lcii;->a(Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcni;->a(Lcom/wandoujia/account/dto/AccountResponse;)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcni;->b()V

    goto :goto_0
.end method
