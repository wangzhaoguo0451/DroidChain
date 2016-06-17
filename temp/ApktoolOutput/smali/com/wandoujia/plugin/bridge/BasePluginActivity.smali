.class public abstract Lcom/wandoujia/plugin/bridge/BasePluginActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BasePluginActivity.java"


# instance fields
.field private a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 4

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wandoujia/plugin/bridge/BasePluginActivity;->a:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/plugin/bridge/BasePluginActivity;->a:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 19
    iget-object v0, p0, Lcom/wandoujia/plugin/bridge/BasePluginActivity;->a:Landroid/content/res/Resources;

    .line 25
    :goto_0
    return-object v0

    .line 21
    :cond_0
    invoke-static {}, Lgyy;->c()Lgyy;

    move-result-object v0

    invoke-virtual {v0}, Lgyy;->b()Landroid/content/res/Resources;

    move-result-object v0

    .line 23
    new-instance v1, Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/wandoujia/plugin/bridge/BasePluginActivity;->a:Landroid/content/res/Resources;

    .line 25
    iget-object v0, p0, Lcom/wandoujia/plugin/bridge/BasePluginActivity;->a:Landroid/content/res/Resources;

    goto :goto_0
.end method
