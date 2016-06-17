.class public final Lgbr;
.super Ljava/lang/Object;
.source "MainSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/wandoujia/p4/settings/MainSettingActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/settings/MainSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lgbr;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 250
    invoke-static {}, Lhpa;->a()Lhpa;

    move-result-object v0

    invoke-virtual {v0}, Lhpa;->c()Z

    move-result v0

    .line 252
    iget-object v1, p0, Lgbr;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    invoke-virtual {v1}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lj;->a(Landroid/content/Context;Z)V

    .line 253
    iget-object v1, p0, Lgbr;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    new-instance v2, Lgbs;

    invoke-direct {v2, p0, v0}, Lgbs;-><init>(Lgbr;Z)V

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/settings/MainSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method
