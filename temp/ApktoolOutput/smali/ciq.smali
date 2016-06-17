.class final Lciq;
.super Ljava/lang/Object;
.source "AccountCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/dto/AccountResponse;

.field private synthetic b:Lcio;


# direct methods
.method constructor <init>(Lcio;Lcom/wandoujia/account/dto/AccountResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 872
    iput-object p1, p0, Lciq;->b:Lcio;

    iput-object p2, p0, Lciq;->a:Lcom/wandoujia/account/dto/AccountResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 875
    iget-object v0, p0, Lciq;->b:Lcio;

    iget-object v0, v0, Lcio;->a:Lcii;

    iget-object v0, v0, Lcii;->f:Lcmh;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lciq;->b:Lcio;

    iget-object v0, v0, Lcio;->a:Lcii;

    iget-object v0, v0, Lcii;->f:Lcmh;

    new-instance v1, Lcom/wandoujia/account/dto/WandouResponse;

    iget-object v2, p0, Lciq;->a:Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {v2}, Lcom/wandoujia/account/dto/AccountResponse;->getError()I

    move-result v2

    iget-object v3, p0, Lciq;->a:Lcom/wandoujia/account/dto/AccountResponse;

    invoke-virtual {v3}, Lcom/wandoujia/account/dto/AccountResponse;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/account/dto/WandouResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcmh;->a(Lcom/wandoujia/account/dto/WandouResponse;)V

    .line 879
    :cond_0
    return-void
.end method
