.class final Lfur;
.super Ljava/lang/Object;
.source "MyGiftSelectableAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 153
    return-void
.end method
