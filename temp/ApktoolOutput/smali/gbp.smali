.class final Lgbp;
.super Ljava/lang/Object;
.source "MainSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lgbo;


# direct methods
.method constructor <init>(Lgbo;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lgbp;->a:Lgbo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 221
    invoke-static {}, Lhpa;->a()Lhpa;

    move-result-object v0

    invoke-virtual {v0}, Lhpa;->c()Z

    move-result v0

    .line 223
    iget-object v1, p0, Lgbp;->a:Lgbo;

    iget-object v1, v1, Lgbo;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    invoke-virtual {v1}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lj;->a(Landroid/content/Context;Z)V

    .line 224
    iget-object v1, p0, Lgbp;->a:Lgbo;

    iget-object v1, v1, Lgbo;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    new-instance v2, Lgbq;

    invoke-direct {v2, p0, v0}, Lgbq;-><init>(Lgbp;Z)V

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/settings/MainSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method
