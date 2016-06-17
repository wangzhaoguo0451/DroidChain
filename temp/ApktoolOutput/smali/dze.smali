.class public final Ldze;
.super Ljava/lang/Object;
.source "GameLauncherActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 205
    invoke-static {}, Lhrx;->a()Lhrx;

    move-result-object v0

    new-instance v1, Ldxr;

    const-string v2, "show_bottom_label"

    invoke-direct {v1, v2}, Ldxr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 206
    return-void
.end method
