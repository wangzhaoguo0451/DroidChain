.class final Lcit;
.super Ljava/lang/Thread;
.source "AccountCore.java"


# instance fields
.field final synthetic a:Lcir;


# direct methods
.method constructor <init>(Lcir;)V
    .locals 0
    .parameter

    .prologue
    .line 999
    iput-object p1, p0, Lcit;->a:Lcir;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1003
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://account.wandoujia.com/v4/api/oauth/sina?access_token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcit;->a:Lcir;

    iget-object v1, v1, Lcir;->c:Lcii;

    iget-object v1, v1, Lcii;->e:Lbuu;

    iget-object v1, v1, Lbuu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcit;->a:Lcir;

    iget-object v1, v1, Lcir;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcit;->a:Lcir;

    iget-object v1, v1, Lcir;->c:Lcii;

    iget-object v1, v1, Lcii;->k:Lcml;

    iget-object v1, v1, Lcml;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcit;->a:Lcir;

    iget-object v1, v1, Lcir;->b:Lcom/wandoujia/account/dto/DeviceBean;

    invoke-static {v1}, Lcii;->b(Lcom/wandoujia/account/dto/DeviceBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1007
    iget-object v1, p0, Lcit;->a:Lcir;

    iget-object v1, v1, Lcir;->c:Lcii;

    invoke-virtual {v1, v0}, Lcii;->b(Ljava/lang/String;)Lcom/wandoujia/account/dto/AccountResponse;

    move-result-object v0

    .line 1008
    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getError()I

    move-result v1

    sget-object v2, Lcom/wandoujia/account/dto/AccountError;->SUCCESS:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v2}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1010
    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    move-result-object v1

    iget-object v2, p0, Lcit;->a:Lcir;

    iget-object v2, v2, Lcir;->c:Lcii;

    invoke-virtual {v2}, Lcii;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ld;->a(Lcom/wandoujia/account/dto/AccountBean;Ljava/lang/String;)V

    .line 1011
    iget-object v1, p0, Lcit;->a:Lcir;

    iget-object v1, v1, Lcir;->c:Lcii;

    iget-object v1, v1, Lcii;->h:Landroid/os/Handler;

    new-instance v2, Lciu;

    invoke-direct {v2, p0, v0}, Lciu;-><init>(Lcit;Lcom/wandoujia/account/dto/AccountResponse;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1041
    :goto_0
    return-void

    .line 1021
    :cond_0
    iget-object v1, p0, Lcit;->a:Lcir;

    iget-object v1, v1, Lcir;->c:Lcii;

    iget-object v1, v1, Lcii;->h:Landroid/os/Handler;

    new-instance v2, Lciv;

    invoke-direct {v2, p0, v0}, Lciv;-><init>(Lcit;Lcom/wandoujia/account/dto/AccountResponse;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1032
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcit;->a:Lcir;

    iget-object v0, v0, Lcir;->c:Lcii;

    iget-object v0, v0, Lcii;->h:Landroid/os/Handler;

    new-instance v1, Lciw;

    invoke-direct {v1, p0}, Lciw;-><init>(Lcit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
