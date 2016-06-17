.class public final Lcmw;
.super Lcmp;
.source "CheckNeedResetPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p2, p3, p4}, Lcmp;-><init>(Ljava/lang/String;Lcmg;Lcmm;)V

    .line 15
    iput-object p1, p0, Lcmw;->e:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcmw;->b:Z

    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 21
    invoke-virtual {p0}, Lcmw;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcmw;->d:Lcmm;

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcmw;->b()V

    .line 30
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcmw;->d:Lcmm;

    iget-object v1, p0, Lcmw;->e:Ljava/lang/String;

    iget-object v0, v0, Lcmm;->a:Lcii;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "https://account.wandoujia.com/v4/api/needresetpassword"

    invoke-virtual {v0, v1, v2}, Lcii;->a(Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcmw;->a(Lcom/wandoujia/account/dto/AccountResponse;)V

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcmw;->b()V

    goto :goto_0
.end method
