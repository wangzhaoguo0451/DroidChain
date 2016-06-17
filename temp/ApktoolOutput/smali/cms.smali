.class public final Lcms;
.super Lcmp;
.source "ActiveTelRunnable.java"

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
    .line 14
    invoke-direct {p0, p2, p3, p4}, Lcmp;-><init>(Ljava/lang/String;Lcmg;Lcmm;)V

    .line 15
    iput-object p1, p0, Lcms;->e:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 20
    invoke-virtual {p0}, Lcms;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcms;->d:Lcmm;

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcms;->b()V

    .line 29
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcms;->d:Lcmm;

    iget-object v1, p0, Lcms;->e:Ljava/lang/String;

    iget-object v0, v0, Lcmm;->a:Lcii;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "passcode"

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "https://account.wandoujia.com/v4/api/activation/telephone"

    invoke-virtual {v0, v1, v2}, Lcii;->a(Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcms;->a(Lcom/wandoujia/account/dto/AccountResponse;)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcms;->b()V

    goto :goto_0
.end method
