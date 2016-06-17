.class public final Lcmc;
.super Ljava/lang/Object;
.source "AccountVerificationFragmentContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 94
    invoke-static {}, Lcom/wandoujia/account/fragment/AccountVerificationFragmentContainer;->b()V

    .line 95
    return-void
.end method
