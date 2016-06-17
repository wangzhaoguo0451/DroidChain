.class public final Lgbw;
.super Ljava/lang/Object;
.source "MainSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lgbw;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 419
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    iget-object v0, v0, Letz;->a:Lcmm;

    invoke-static {v0}, Ld;->a(Lcmm;)V

    .line 420
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lgbw;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;)V

    .line 422
    iget-object v0, p0, Lgbw;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 423
    return-void
.end method
