.class final Lcir;
.super Ljava/lang/Object;
.source "AccountCore.java"

# interfaces
.implements Lbuv;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/wandoujia/account/dto/DeviceBean;

.field final synthetic c:Lcii;


# direct methods
.method public constructor <init>(Lcii;Ljava/lang/String;Lcom/wandoujia/account/dto/DeviceBean;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 974
    iput-object p1, p0, Lcir;->c:Lcii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 975
    iput-object p2, p0, Lcir;->a:Ljava/lang/String;

    .line 976
    iput-object p3, p0, Lcir;->b:Lcom/wandoujia/account/dto/DeviceBean;

    .line 977
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 981
    iget-object v0, p0, Lcir;->c:Lcii;

    iget-object v0, v0, Lcii;->h:Landroid/os/Handler;

    new-instance v1, Lcis;

    invoke-direct {v1, p0}, Lcis;-><init>(Lcir;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 990
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 994
    iget-object v0, p0, Lcir;->c:Lcii;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcii;->c:Ljava/lang/String;

    .line 995
    iget-object v0, p0, Lcir;->c:Lcii;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcii;->d:Ljava/lang/String;

    .line 996
    iget-object v0, p0, Lcir;->c:Lcii;

    new-instance v1, Lbuu;

    iget-object v2, p0, Lcir;->c:Lcii;

    iget-object v2, v2, Lcii;->c:Ljava/lang/String;

    iget-object v3, p0, Lcir;->c:Lcii;

    iget-object v3, v3, Lcii;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lbuu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcii;->e:Lbuu;

    .line 998
    iget-object v0, p0, Lcir;->c:Lcii;

    iget-object v0, v0, Lcii;->e:Lbuu;

    invoke-virtual {v0}, Lbuu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    new-instance v0, Lcit;

    invoke-direct {v0, p0}, Lcit;-><init>(Lcir;)V

    invoke-virtual {v0}, Lcit;->start()V

    .line 1043
    iget-object v0, p0, Lcir;->c:Lcii;

    iget-object v0, v0, Lcii;->h:Landroid/os/Handler;

    new-instance v1, Lcix;

    invoke-direct {v1, p0}, Lcix;-><init>(Lcir;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1059
    :goto_0
    return-void

    .line 1050
    :cond_0
    iget-object v0, p0, Lcir;->c:Lcii;

    iget-object v0, v0, Lcii;->h:Landroid/os/Handler;

    new-instance v1, Lciy;

    invoke-direct {v1, p0}, Lciy;-><init>(Lcir;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 2
    .parameter

    .prologue
    .line 1063
    iget-object v0, p0, Lcir;->c:Lcii;

    iget-object v0, v0, Lcii;->h:Landroid/os/Handler;

    new-instance v1, Lciz;

    invoke-direct {v1, p0, p1}, Lciz;-><init>(Lcir;Lcom/sina/weibo/sdk/exception/WeiboException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1074
    return-void
.end method
