.class public final Ldfz;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Lcom/wandoujia/account/listener/IAccountListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Ldfz;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 403
    invoke-direct {p0, p1}, Ldfz;-><init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 417
    sget-object v0, Lcom/wandoujia/account/dto/Role;->ROLE_SUBSCRIBER:Lcom/wandoujia/account/dto/Role;

    invoke-static {v0}, Lchv;->a(Lcom/wandoujia/account/dto/Role;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Ldfz;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->i(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V

    .line 420
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/account/listener/IAccountListener$LoginType;)V
    .locals 1
    .parameter

    .prologue
    .line 407
    sget-object v0, Lcom/wandoujia/account/listener/IAccountListener$LoginType;->LOGIN:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    invoke-virtual {v0, p1}, Lcom/wandoujia/account/listener/IAccountListener$LoginType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wandoujia/account/dto/Role;->ROLE_SUBSCRIBER:Lcom/wandoujia/account/dto/Role;

    invoke-static {v0}, Lchv;->a(Lcom/wandoujia/account/dto/Role;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Ldfz;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->i(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V

    .line 412
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Ldfz;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->i(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V

    .line 425
    return-void
.end method
