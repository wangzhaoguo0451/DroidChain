.class final Lciz;
.super Ljava/lang/Object;
.source "AccountCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/sina/weibo/sdk/exception/WeiboException;

.field private synthetic b:Lcir;


# direct methods
.method constructor <init>(Lcir;Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1063
    iput-object p1, p0, Lciz;->b:Lcir;

    iput-object p2, p0, Lciz;->a:Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1066
    iget-object v0, p0, Lciz;->a:Lcom/sina/weibo/sdk/exception/WeiboException;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lciz;->b:Lcir;

    iget-object v0, v0, Lcir;->c:Lcii;

    iget-object v0, v0, Lcii;->f:Lcmh;

    new-instance v1, Lcom/wandoujia/account/dto/WandouResponse;

    const v2, 0xf4242

    iget-object v3, p0, Lciz;->a:Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/account/dto/WandouResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcmh;->a(Lcom/wandoujia/account/dto/WandouResponse;)V

    .line 1072
    :goto_0
    return-void

    .line 1070
    :cond_0
    iget-object v0, p0, Lciz;->b:Lcir;

    iget-object v0, v0, Lcir;->c:Lcii;

    iget-object v0, v0, Lcii;->f:Lcmh;

    new-instance v1, Lcom/wandoujia/account/dto/WandouResponse;

    invoke-direct {v1}, Lcom/wandoujia/account/dto/WandouResponse;-><init>()V

    invoke-interface {v0, v1}, Lcmh;->a(Lcom/wandoujia/account/dto/WandouResponse;)V

    goto :goto_0
.end method
