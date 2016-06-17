.class final Ldyz;
.super Ljava/lang/Object;
.source "GameLauncherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Ldyz;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    invoke-static {}, Lcom/wandoujia/launcher/Config;->f()V

    .line 131
    iget-object v0, p0, Ldyz;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 132
    return-void
.end method
