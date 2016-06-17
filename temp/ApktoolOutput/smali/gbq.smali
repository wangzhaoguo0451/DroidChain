.class final Lgbq;
.super Ljava/lang/Object;
.source "MainSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lgbp;


# direct methods
.method constructor <init>(Lgbp;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lgbq;->b:Lgbp;

    iput-boolean p2, p0, Lgbq;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lgbq;->a:Z

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lgbq;->b:Lgbp;

    iget-object v0, v0, Lgbp;->a:Lgbo;

    iget-object v0, v0, Lgbo;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Leuz;->a(Landroid/content/Context;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lgbq;->b:Lgbp;

    iget-object v0, v0, Lgbp;->a:Lgbo;

    iget-object v0, v0, Lgbo;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    iget-boolean v1, p0, Lgbq;->a:Z

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/settings/MainSettingActivity;->a(Z)V

    .line 234
    return-void
.end method
