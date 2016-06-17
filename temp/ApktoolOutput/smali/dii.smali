.class public final Ldii;
.super Ljava/lang/Object;
.source "LibFragment.java"

# interfaces
.implements Lcom/wandoujia/account/listener/IAccountListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Ldii;->a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/jupiter/library/fragment/LibFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-direct {p0, p1}, Ldii;-><init>(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Ldii;->a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->c(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)V

    .line 389
    return-void
.end method

.method public final a(Lcom/wandoujia/account/listener/IAccountListener$LoginType;)V
    .locals 1
    .parameter

    .prologue
    .line 381
    sget-object v0, Lcom/wandoujia/account/listener/IAccountListener$LoginType;->LOGIN:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    invoke-virtual {v0, p1}, Lcom/wandoujia/account/listener/IAccountListener$LoginType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Ldii;->a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->c(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)V

    .line 384
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Ldii;->a:Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;->c(Lcom/wandoujia/jupiter/library/fragment/LibFragment;)V

    .line 394
    return-void
.end method
