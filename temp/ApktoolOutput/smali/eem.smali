.class final Leem;
.super Ljava/lang/Object;
.source "UninstallAppAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 46
    return-void
.end method
