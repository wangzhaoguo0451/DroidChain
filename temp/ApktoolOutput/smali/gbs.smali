.class final Lgbs;
.super Ljava/lang/Object;
.source "MainSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lgbr;


# direct methods
.method constructor <init>(Lgbr;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lgbs;->b:Lgbr;

    iput-boolean p2, p0, Lgbs;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 259
    iget-boolean v0, p0, Lgbs;->a:Z

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lgbs;->b:Lgbr;

    iget-object v0, v0, Lgbr;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Leuz;->a(Landroid/content/Context;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lgbs;->b:Lgbr;

    iget-object v0, v0, Lgbr;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    iget-boolean v1, p0, Lgbs;->a:Z

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/settings/MainSettingActivity;->a(Z)V

    .line 265
    return-void
.end method
