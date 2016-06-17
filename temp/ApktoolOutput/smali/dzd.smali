.class public final Ldzd;
.super Ljava/lang/Object;
.source "GameLauncherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/app/AlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Ldzd;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 195
    const-string v0, "game_home"

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->IGNORE_UPGRADE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v3, "cancel_upgrade_game_launcher"

    invoke-static {p1, v0, v1, v2, v3}, Ld;->a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Ldzd;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 199
    invoke-static {}, Lhrx;->a()Lhrx;

    move-result-object v0

    new-instance v1, Ldxr;

    const-string v2, "show_bottom_label"

    invoke-direct {v1, v2}, Ldxr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 200
    return-void
.end method
