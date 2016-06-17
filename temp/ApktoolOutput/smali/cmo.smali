.class final Lcmo;
.super Ljava/lang/Object;
.source "WDJAccountManager.java"

# interfaces
.implements Lcmg;


# instance fields
.field private synthetic a:Lcmm;


# direct methods
.method constructor <init>(Lcmm;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcmo;->a:Lcmm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 594
    return-void
.end method

.method public final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 3
    .parameter

    .prologue
    .line 598
    invoke-virtual {p1}, Lcom/wandoujia/account/dto/WandouResponse;->getError()I

    move-result v0

    sget-object v1, Lcom/wandoujia/account/dto/AccountError;->PERMISSION_DENIED:Lcom/wandoujia/account/dto/AccountError;

    invoke-virtual {v1}, Lcom/wandoujia/account/dto/AccountError;->getError()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 600
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcnb;

    iget-object v2, p0, Lcmo;->a:Lcmm;

    invoke-direct {v1, v2}, Lcnb;-><init>(Lcmm;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 602
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 591
    return-void
.end method
