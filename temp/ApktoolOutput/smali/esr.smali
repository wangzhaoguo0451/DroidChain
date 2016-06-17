.class public final Lesr;
.super Ljava/lang/Object;
.source "AccountChangeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 140
    return-void
.end method
