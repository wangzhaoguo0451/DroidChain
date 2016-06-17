.class final Lcmq;
.super Ljava/lang/Object;
.source "AccountOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/dto/AccountResponse;

.field private synthetic b:Lcmp;


# direct methods
.method constructor <init>(Lcmp;Lcom/wandoujia/account/dto/AccountResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcmq;->b:Lcmp;

    iput-object p2, p0, Lcmq;->a:Lcom/wandoujia/account/dto/AccountResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 53
    iget-object v0, p0, Lcmq;->a:Lcom/wandoujia/account/dto/AccountResponse;

    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lcmq;->a:Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getError()I

    move-result v0

    sget-object v1, Lcom/wandoujia/account/dto/AccountError;->SUCCESS:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 55
    iget-object v0, p0, Lcmq;->a:Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {v0}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcmq;->b:Lcmp;

    iget-object v0, v0, Lcmp;->a:Lcmg;

    iget-object v1, p0, Lcmq;->a:Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountResponse;->getMember()Lcom/wandoujia/account/dto/AccountBean;

    iget-object v1, p0, Lcmq;->b:Lcmp;

    iget-object v1, v1, Lcmp;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcmg;->a(Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcmq;->b:Lcmp;

    iget-boolean v0, v0, Lcmp;->b:Z

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcmq;->b:Lcmp;

    iget-object v0, v0, Lcmp;->a:Lcmg;

    invoke-interface {v0}, Lcmg;->a()V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcmq;->b:Lcmp;

    iget-object v0, v0, Lcmp;->a:Lcmg;

    iget-object v1, p0, Lcmq;->b:Lcmp;

    iget-object v1, v1, Lcmp;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcmg;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcmq;->b:Lcmp;

    iget-object v0, v0, Lcmp;->a:Lcmg;

    new-instance v1, Lcom/wandoujia/account/dto/WandouResponse;

    iget-object v2, p0, Lcmq;->a:Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {v2}, Lcom/wandoujia/account/dto/AccountResponse;->getError()I

    move-result v2

    iget-object v3, p0, Lcmq;->a:Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {v3}, Lcom/wandoujia/account/dto/AccountResponse;->getMsg()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcmq;->a:Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {v4}, Lcom/wandoujia/account/dto/AccountResponse;->getVerificationGroups()[Lcom/wandoujia/account/dto/AccountVerificationGroup;

    move-result-object v4

    iget-object v5, p0, Lcmq;->a:Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {v5}, Lcom/wandoujia/account/dto/AccountResponse;->getArgs()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/wandoujia/account/dto/WandouResponse;-><init>(ILjava/lang/String;[Lcom/wandoujia/account/dto/AccountVerificationGroup;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcmg;->a(Lcom/wandoujia/account/dto/WandouResponse;)V

    goto :goto_0

    .line 69
    :cond_3
    iget-object v0, p0, Lcmq;->b:Lcmp;

    iget-object v0, v0, Lcmp;->a:Lcmg;

    new-instance v1, Lcom/wandoujia/account/dto/WandouResponse;

    const v2, 0xf4243

    sget v3, Lcom/wandoujia/account/R$string;->account_sdk_netop_server_error:I

    invoke-static {v3}, Ld;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/account/dto/WandouResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcmg;->a(Lcom/wandoujia/account/dto/WandouResponse;)V

    goto :goto_0
.end method
