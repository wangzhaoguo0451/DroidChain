.class public final Lfpa;
.super Lgyy;
.source "ConnectionFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Lgyy;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 492
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 497
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
