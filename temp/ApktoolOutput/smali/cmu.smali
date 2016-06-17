.class public final Lcmu;
.super Lcmp;
.source "ChangePasswordRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmg;Lcmm;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p3, p4, p5}, Lcmp;-><init>(Ljava/lang/String;Lcmg;Lcmm;)V

    .line 14
    iput-object p1, p0, Lcmu;->e:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcmu;->f:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 20
    invoke-virtual {p0}, Lcmu;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcmu;->d:Lcmm;

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcmu;->b()V

    .line 29
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcmu;->d:Lcmm;

    iget-object v1, p0, Lcmu;->e:Ljava/lang/String;

    iget-object v2, p0, Lcmu;->f:Ljava/lang/String;

    iget-object v0, v0, Lcmm;->a:Lcii;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "old_password"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "new_password"

    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "https://account.wandoujia.com/v4/api/profile/password"

    invoke-virtual {v0, v1, v3}, Lcii;->a(Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcmu;->a(Lcom/wandoujia/account/dto/AccountResponse;)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcmu;->b()V

    goto :goto_0
.end method
