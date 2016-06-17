.class public final Lckl;
.super Ljava/lang/Object;
.source "AccountLoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 583
    if-eqz p1, :cond_0

    .line 584
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 586
    :cond_0
    return-void
.end method
