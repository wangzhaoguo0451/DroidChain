.class final Lgbh;
.super Ljava/lang/Object;
.source "MainSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lgbg;


# direct methods
.method constructor <init>(Lgbg;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lgbh;->a:Lgbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lgbh;->a:Lgbg;

    iget-object v0, v0, Lgbg;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Leuz;->b(Landroid/content/Context;)V

    .line 516
    return-void
.end method
