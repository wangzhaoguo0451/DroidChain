.class public final Lduy;
.super Ljava/lang/Object;
.source "JupiterToolbar.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lduy;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    .line 73
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    iget-object v1, p0, Lduy;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    const-string v3, "wdj://me/downloads"

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;)V

    .line 76
    const/4 v0, 0x0

    return v0
.end method
