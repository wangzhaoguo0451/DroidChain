.class public final Lcuq;
.super Ljava/lang/Object;
.source "GamePacketInstaller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 245
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 246
    return-void
.end method
